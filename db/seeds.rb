# frozen_string_literal: true

Channel.insert_all([{ name: 'general' }, { name: 'random' }, { name: 'hello' }])
Channel.all.pluck(:id) => [id_1, id_2, id_3]
Message.insert_all([
                     { content: 'Hello to all!', author: 'Alexey', channel_id: id_1 },
                     { content: 'Hello my friend!', author: 'Dmitry', channel_id: id_1 },
                     { content: 'Hello to all!', author: 'Michael', channel_id: id_1 },
                     { content: 'Hello my friend!', author: 'Anatoly', channel_id: id_1 },
                     { content: 'Hello to all!', author: 'Ivan', channel_id: id_2 },
                     { content: 'Hello my friend!', author: 'Gennady', channel_id: id_2 },
                     { content: 'Hello to all!', author: 'Anatoly', channel_id: id_2 },
                     { content: 'Hello my friend!', author: 'Illarion', channel_id: id_2 },
                     { content: 'Hello to all!', author: 'Kirill', channel_id: id_3 },
                     { content: 'Hello my friend!', author: 'Alexander', channel_id: id_3 },
                     { content: 'Hello to all!', author: 'Basil', channel_id: id_3 },
                     { content: 'Hello my friend!', author: 'Vitaly', channel_id: id_3 }
                   ])
