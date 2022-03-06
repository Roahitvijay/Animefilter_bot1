import logging
from pyrogram import Client as Animefilter_bot1, filters as Worker
from Animefilter_bot1.database.autofilter_db import Media
from config import ADMINS
logger = logging.getLogger(__name__)

@Animefilter_bot1.on_message(Worker.command('total') & Worker.user(ADMINS))
async def total(bot, message):

    msg = await message.reply("Processing...⏳", quote=True)
    try:
        total = await Media.count_documents()
        await msg.edit(f'📁 Saved files: {total}')
    except Exception as e:
        logger.exception('Failed to check total files')
        await msg.edit(f'Error: {e}')
