const http = require('http');
const axios = require('axios');

const apiUrl = 'https://xu.su/api/send';
const uid = '5b298d65-e9de-4e65-a83c-097ce8ee715e';
const bot = 'бот-онлайн';

function decodeText(text) {
return decodeURIComponent(text.replace(/\+/g, ' '));
}

const server = http.createServer((req, res) => {
let textToSend = decodeText(req.url.slice(1));
textToSend = textToSend.slice(6); // удаление первых 6 символов
console.log('Вопрос: ', textToSend);
axios.post(apiUrl, { uid, bot, text: textToSend })
.then((response) => {
const message = response.data.text;
console.log('Ответ: ', message);
res.writeHead(200, { 'Content-Type': 'text/plain' });
res.end(message);
})
.catch((error) => {
console.error(error);
res.writeHead(500, { 'Content-Type': 'text/plain' });
res.end('Error');
});
});





server.listen(8181, () => {
console.log('Сервер запущен на 8181 порту');

});
