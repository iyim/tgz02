.class Landroid/databinding/V1CompatDataBinderMapperImpl;
.super Landroid/databinding/DataBinderMapper;
.source "V1CompatDataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/V1CompatDataBinderMapperImpl$InnerBrLookup;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/databinding/DataBinderMapper;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public convertBrIdToString(I)Ljava/lang/String;
    .locals 1

    .line 1288
    sget-object v0, Landroid/databinding/V1CompatDataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDataBinder(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "view must have a tag"

    sparse-switch p3, :sswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 385
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string v0, "layout/ximalaya_player_fragment_0"

    .line 387
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/XimalayaPlayerFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 390
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for ximalaya_player_fragment is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 386
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 457
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    const-string v0, "layout/tme_play_list_fragment_0"

    .line 459
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmePlayListFragmentBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmePlayListFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 462
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for tme_play_list_fragment is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 458
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 376
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_5

    const-string v0, "layout/tme_music_feeds_fragment_0"

    .line 378
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 379
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeMusicFeedsFragmentBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeMusicFeedsFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 381
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for tme_music_feeds_fragment is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 377
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 427
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_7

    const-string v0, "layout/tme_music_accounts_fragment_0"

    .line 429
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 430
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeMusicAccountsFragmentBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeMusicAccountsFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 432
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for tme_music_accounts_fragment is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 428
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 694
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_9

    const-string v0, "layout/tme_main_activity_0"

    .line 696
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 697
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeMainActivityBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeMainActivityBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 699
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for tme_main_activity is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 695
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 592
    :sswitch_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_b

    const-string v0, "layout/tme_collect_songs_fragment_0"

    .line 594
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 595
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeCollectSongsFragmentBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeCollectSongsFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 597
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for tme_collect_songs_fragment is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 593
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 628
    :sswitch_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_d

    const-string v0, "layout/tme_channel_rank_list_0"

    .line 630
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 631
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelRankListBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelRankListBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 633
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for tme_channel_rank_list is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 629
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 247
    :sswitch_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_f

    const-string v0, "layout/tme_channel_fragment_0"

    .line 249
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 250
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelFragmentBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 252
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for tme_channel_fragment is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 532
    :sswitch_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_11

    const-string v0, "layout/tme_channel_entrance_netease_0"

    .line 534
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 535
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceNeteaseBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 537
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for tme_channel_entrance_netease is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 533
    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :sswitch_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_13

    const-string v0, "layout/tme_channel_entrance_genie_0"

    .line 210
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 211
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceGenieBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 213
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for tme_channel_entrance_genie is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_13
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :sswitch_a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_15

    const-string v0, "layout/tme_channel_entrance_0"

    .line 219
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 220
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelEntranceBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 222
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for tme_channel_entrance is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 502
    :sswitch_b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_17

    const-string v0, "layout/tme_brand_rank_item_0"

    .line 504
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 505
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeBrandRankItemBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeBrandRankItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 507
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for tme_brand_rank_item is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 503
    :cond_17
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :sswitch_c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_19

    const-string v0, "layout/tab_dial_0"

    .line 258
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 259
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabDialBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 261
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for tab_dial is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_19
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 580
    :sswitch_d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1c

    const-string v0, "layout-1280x800/tab_contacts_0"

    .line 582
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 583
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding1280x800Impl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_1a
    const-string v0, "layout/tab_contacts_0"

    .line 585
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 586
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabContactsBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 588
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for tab_contacts is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 581
    :cond_1c
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 355
    :sswitch_e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1f

    const-string v0, "layout-1280x800/tab_call_record_0"

    .line 357
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 358
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding1280x800Impl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_1d
    const-string v0, "layout/tab_call_record_0"

    .line 360
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 361
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/TabCallRecordBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 363
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for tab_call_record is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_1f
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 562
    :sswitch_f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_21

    const-string v0, "layout/similar_gridview_item_0"

    .line 564
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 565
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/SimilarGridviewItemBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/SimilarGridviewItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 567
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for similar_gridview_item is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 563
    :cond_21
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 685
    :sswitch_10
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_23

    const-string v0, "layout/select_list_activity_0"

    .line 687
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 688
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectListActivityBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 690
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for select_list_activity is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 686
    :cond_23
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 541
    :sswitch_11
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_26

    const-string v0, "layout-1280x800/select_item_layout_0"

    .line 543
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 544
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding1280x800Impl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_24
    const-string v0, "layout/select_item_layout_0"

    .line 546
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 547
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/SelectItemLayoutBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 549
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for select_item_layout is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 542
    :cond_26
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 493
    :sswitch_12
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_28

    const-string v0, "layout/radiostation_recyclerview_0"

    .line 495
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 496
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/RadiostationRecyclerviewBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/RadiostationRecyclerviewBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 498
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for radiostation_recyclerview is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 494
    :cond_28
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 466
    :sswitch_13
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2a

    const-string v0, "layout/play_list_activity_0"

    .line 468
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 469
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/PlayListActivityBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 471
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for play_list_activity is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 467
    :cond_2a
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :sswitch_14
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2c

    const-string v0, "layout/music_player_fragment_0"

    .line 285
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 286
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicPlayerFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 288
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for music_player_fragment is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_2c
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 658
    :sswitch_15
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2e

    const-string v0, "layout/music_extend_fragment_0"

    .line 660
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 661
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 663
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for music_extend_fragment is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 659
    :cond_2e
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :sswitch_16
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_31

    const-string v0, "layout/layout_voip_to_pstn_0"

    .line 294
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 295
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_2f
    const-string v0, "layout-1280x800/layout_voip_to_pstn_0"

    .line 297
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 298
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding1280x800Impl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutVoipToPstnBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 300
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for layout_voip_to_pstn is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_31
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :sswitch_17
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_33

    const-string v0, "layout/layout_switch_item_0"

    .line 165
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 166
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutSwitchItemBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutSwitchItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 168
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for layout_switch_item is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_33
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 511
    :sswitch_18
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_36

    const-string v0, "layout-1280x800/layout_relationship_item_0"

    .line 513
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 514
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding1280x800Impl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_34
    const-string v0, "layout/layout_relationship_item_0"

    .line 516
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 517
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 519
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for layout_relationship_item is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 512
    :cond_36
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 484
    :sswitch_19
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_38

    const-string v0, "layout/layout_item_footer_0"

    .line 486
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 487
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutItemFooterBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 489
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for layout_item_footer is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 485
    :cond_38
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 331
    :sswitch_1a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3b

    const-string v0, "layout-1280x800/layout_image_text_0"

    .line 333
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 334
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBinding1280x800Impl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_39
    const-string v0, "layout/layout_image_text_0"

    .line 336
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 337
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutImageTextBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 339
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for layout_image_text is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 332
    :cond_3b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 637
    :sswitch_1b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3e

    const-string v0, "layout/layout_edit_item_0"

    .line 639
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 640
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_3c
    const-string v0, "layout-1280x800/layout_edit_item_0"

    .line 642
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 643
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding1280x800Impl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutEditItemBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 645
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for layout_edit_item is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 638
    :cond_3e
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :sswitch_1c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_41

    const-string v0, "layout/layout_download_tips_0"

    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 25
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDownloadTipsBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDownloadTipsBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_3f
    const-string v0, "layout-1280x800/layout_download_tips_0"

    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 28
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDownloadTipsBinding1280x800Impl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDownloadTipsBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 30
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for layout_download_tips is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_41
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 343
    :sswitch_1d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_44

    const-string v2, "layout-1280x800/layout_device_info_0"

    .line 345
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 346
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;

    new-array v1, v1, [Landroid/view/View;

    aput-object p2, v1, v0

    invoke-direct {p3, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;[Landroid/view/View;)V

    return-object p3

    :cond_42
    const-string v2, "layout/layout_device_info_0"

    .line 348
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 349
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBindingImpl;

    new-array v1, v1, [Landroid/view/View;

    aput-object p2, v1, v0

    invoke-direct {p3, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;[Landroid/view/View;)V

    return-object p3

    .line 351
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for layout_device_info is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    :cond_44
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 403
    :sswitch_1e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_47

    const-string v2, "layout-1280x800/layout_contacts_info_0"

    .line 405
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 406
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding1280x800Impl;

    new-array v1, v1, [Landroid/view/View;

    aput-object p2, v1, v0

    invoke-direct {p3, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;[Landroid/view/View;)V

    return-object p3

    :cond_45
    const-string v2, "layout/layout_contacts_info_0"

    .line 408
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 409
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;

    new-array v1, v1, [Landroid/view/View;

    aput-object p2, v1, v0

    invoke-direct {p3, p1, v1}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;[Landroid/view/View;)V

    return-object p3

    .line 411
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for layout_contacts_info is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 404
    :cond_47
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :sswitch_1f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_49

    const-string v0, "layout/layout_contacts_error_0"

    .line 192
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 193
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsErrorBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsErrorBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 195
    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for layout_contacts_error is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 191
    :cond_49
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :sswitch_20
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4c

    const-string v0, "layout/layout_contacts_dial_0"

    .line 45
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 46
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_4a
    const-string v0, "layout-1280x800/layout_contacts_dial_0"

    .line 48
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 49
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding1280x800Impl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsDialBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 51
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for layout_contacts_dial is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_4c
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :sswitch_21
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4e

    const-string v0, "layout/layout_contacts_avatar_0"

    .line 147
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 148
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsAvatarBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 150
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for layout_contacts_avatar is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_4e
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 553
    :sswitch_22
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_50

    const-string v0, "layout/fragment_stranger_details_0"

    .line 555
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 556
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentStrangerDetailsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 558
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for fragment_stranger_details is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 554
    :cond_50
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    :sswitch_23
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_53

    const-string v0, "layout/fragment_relationship_list_0"

    .line 438
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 439
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_51
    const-string v0, "layout-1280x800/fragment_relationship_list_0"

    .line 441
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 442
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding1280x800Impl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentRelationshipListBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 444
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for fragment_relationship_list is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 437
    :cond_53
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 649
    :sswitch_24
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_55

    const-string v0, "layout/fragment_radiostation_0"

    .line 651
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 652
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentRadiostationBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 654
    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for fragment_radiostation is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 650
    :cond_55
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :sswitch_25
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_57

    const-string v0, "layout/fragment_mine_details_0"

    .line 93
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 94
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentMineDetailsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 96
    :cond_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for fragment_mine_details is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_57
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :sswitch_26
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_59

    const-string v0, "layout/fragment_jokeplayer_0"

    .line 57
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 58
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/FragmentJokeplayerBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 60
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for fragment_jokeplayer is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_59
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 415
    :sswitch_27
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_5c

    const-string v0, "layout-1280x800/fragment_edit_mine_0"

    .line 417
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 418
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding1280x800Impl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_5a
    const-string v0, "layout/fragment_edit_mine_0"

    .line 420
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 421
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditMineBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 423
    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for fragment_edit_mine is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 416
    :cond_5c
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 235
    :sswitch_28
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_5f

    const-string v0, "layout/fragment_edit_contacts_0"

    .line 237
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 238
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_5d
    const-string v0, "layout-1280x800/fragment_edit_contacts_0"

    .line 240
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 241
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding1280x800Impl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentEditContactsBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 243
    :cond_5e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for fragment_edit_contacts is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 236
    :cond_5f
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :sswitch_29
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_61

    const-string v0, "layout/fragment_download_tips_mini_0"

    .line 276
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 277
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsMiniBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsMiniBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 279
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for fragment_download_tips_mini is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_61
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :sswitch_2a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_63

    const-string v0, "layout/fragment_download_tips_0"

    .line 396
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 397
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDownloadTipsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 399
    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for fragment_download_tips is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    :cond_63
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 667
    :sswitch_2b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_65

    const-string v0, "layout/fragment_device_details_0"

    .line 669
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 670
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentDeviceDetailsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 672
    :cond_64
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for fragment_device_details is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 668
    :cond_65
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :sswitch_2c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_67

    const-string v0, "layout/fragment_contacts_details_0"

    .line 174
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 175
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/FragmentContactsDetailsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 177
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for fragment_contacts_details is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_67
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :sswitch_2d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_69

    const-string v0, "layout/extend_similar_0"

    .line 66
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 67
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendSimilarBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 69
    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for extend_similar is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_69
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :sswitch_2e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_6b

    const-string v0, "layout/extend_other_0"

    .line 120
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 121
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 123
    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for extend_other is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_6b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 475
    :sswitch_2f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_6d

    const-string v0, "layout/extend_more_0"

    .line 477
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 478
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendMoreBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 480
    :cond_6c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for extend_more is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 476
    :cond_6d
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 610
    :sswitch_30
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_6f

    const-string v0, "layout/extend_album_0"

    .line 612
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 613
    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 615
    :cond_6e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for extend_album is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 611
    :cond_6f
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 313
    :sswitch_31
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_71

    const-string v0, "layout/delete_contacts_dialog_0"

    .line 315
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 316
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/DeleteContactsDialogBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/DeleteContactsDialogBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 318
    :cond_70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for delete_contacts_dialog is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :cond_71
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :sswitch_32
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_73

    const-string v0, "layout/custom_tab_dial_0"

    .line 183
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 184
    new-instance p3, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabDialBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 186
    :cond_72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for custom_tab_dial is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :cond_73
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :sswitch_33
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_75

    const-string v0, "layout/custom_tab_contacts_0"

    .line 267
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 268
    new-instance p3, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabContactsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 270
    :cond_74
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for custom_tab_contacts is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :cond_75
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 571
    :sswitch_34
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_77

    const-string v0, "layout/custom_tab_cmcc_dial_0"

    .line 573
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 574
    new-instance p3, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCmccDialBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 576
    :cond_76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for custom_tab_cmcc_dial is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 572
    :cond_77
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 676
    :sswitch_35
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_79

    const-string v0, "layout/custom_tab_call_record_0"

    .line 678
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 679
    new-instance p3, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomTabCallRecordBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 681
    :cond_78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for custom_tab_call_record is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 677
    :cond_79
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :sswitch_36
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_7b

    const-string v0, "layout/custom_select_list_activity_0"

    .line 156
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 157
    new-instance p3, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectListActivityBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectListActivityBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 159
    :cond_7a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for custom_select_list_activity is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_7b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :sswitch_37
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_7d

    const-string v0, "layout/custom_select_item_layout_0"

    .line 75
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 76
    new-instance p3, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomSelectItemLayoutBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 78
    :cond_7c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for custom_select_item_layout is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_7d
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 523
    :sswitch_38
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_7f

    const-string v0, "layout/custom_layout_item_footer_0"

    .line 525
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 526
    new-instance p3, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomLayoutItemFooterBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 528
    :cond_7e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for custom_layout_item_footer is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 524
    :cond_7f
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :sswitch_39
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_81

    const-string v0, "layout/custom_item_layout_0"

    .line 84
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 85
    new-instance p3, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomItemLayoutBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 87
    :cond_80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for custom_item_layout is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_81
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :sswitch_3a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_83

    const-string v0, "layout/custom_detail_cu_actiivty_0"

    .line 102
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 103
    new-instance p3, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailCuActiivtyBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 105
    :cond_82
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for custom_detail_cu_actiivty is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_83
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 703
    :sswitch_3b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_85

    const-string v0, "layout/custom_detail_actiivty_0"

    .line 705
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 706
    new-instance p3, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDetailActiivtyBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 708
    :cond_84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for custom_detail_actiivty is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 704
    :cond_85
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :sswitch_3c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_87

    const-string v0, "layout/custom_delete_record_dialog_0"

    .line 15
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 16
    new-instance p3, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDeleteRecordDialogBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomDeleteRecordDialogBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 18
    :cond_86
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for custom_delete_record_dialog is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_87
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 322
    :sswitch_3d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_89

    const-string v0, "layout/custom_call_record_item_layout_0"

    .line 324
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 325
    new-instance p3, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomCallRecordItemLayoutBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 327
    :cond_88
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for custom_call_record_item_layout is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :cond_89
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :sswitch_3e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_8b

    const-string v0, "layout/custom_activity_main_0"

    .line 228
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 229
    new-instance p3, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 231
    :cond_8a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for custom_activity_main is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_8b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 304
    :sswitch_3f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_8d

    const-string v0, "layout/contacts_layout_exit_0"

    .line 306
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 307
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsLayoutExitBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 309
    :cond_8c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for contacts_layout_exit is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_8d
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :sswitch_40
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_8f

    const-string v0, "layout/contacts_item_layout_0"

    .line 201
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 202
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsItemLayoutBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 204
    :cond_8e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for contacts_item_layout is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_8f
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :sswitch_41
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_91

    const-string v0, "layout/contacts_camera_confirm_dialog_0"

    .line 111
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 112
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactsCameraConfirmDialogBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 114
    :cond_90
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for contacts_camera_confirm_dialog is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_91
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 448
    :sswitch_42
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_93

    const-string v0, "layout/contact_activity_main_0"

    .line 450
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 451
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactActivityMainBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ContactActivityMainBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 453
    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for contact_activity_main is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 449
    :cond_93
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 367
    :sswitch_43
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_95

    const-string v0, "layout/cmd_dispatch_activity_0"

    .line 369
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 370
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/CmdDispatchActivityBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/CmdDispatchActivityBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 372
    :cond_94
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for cmd_dispatch_activity is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 368
    :cond_95
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 619
    :sswitch_44
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_97

    const-string v0, "layout/call_record_item_layout_0"

    .line 621
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 622
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/CallRecordItemLayoutBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 624
    :cond_96
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for call_record_item_layout is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 620
    :cond_97
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 712
    :sswitch_45
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_99

    const-string v0, "layout/activity_voip_to_pstn_0"

    .line 714
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 715
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityVoipToPstnBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 717
    :cond_98
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for activity_voip_to_pstn is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 713
    :cond_99
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :sswitch_46
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_9b

    const-string v0, "layout/activity_take_photo_0"

    .line 138
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 139
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 141
    :cond_9a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for activity_take_photo is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_9b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 601
    :sswitch_47
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_9d

    const-string v0, "layout/activity_husky_details_0"

    .line 603
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 604
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityHuskyDetailsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 606
    :cond_9c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for activity_husky_details is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 602
    :cond_9d
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :sswitch_48
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_9f

    const-string v0, "layout/activity_details_0"

    .line 36
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 37
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityDetailsBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityDetailsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 39
    :cond_9e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for activity_details is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_9f
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :sswitch_49
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_a1

    const-string v0, "layout/activity_add_contacts_0"

    .line 129
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 130
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityAddContactsBinding;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityAddContactsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 132
    :cond_a0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The tag for activity_add_contacts is invalid. Received: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_a1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x7f0b001b -> :sswitch_49
        0x7f0b0028 -> :sswitch_48
        0x7f0b002d -> :sswitch_47
        0x7f0b0041 -> :sswitch_46
        0x7f0b0052 -> :sswitch_45
        0x7f0b0084 -> :sswitch_44
        0x7f0b008d -> :sswitch_43
        0x7f0b008e -> :sswitch_42
        0x7f0b008f -> :sswitch_41
        0x7f0b0090 -> :sswitch_40
        0x7f0b0091 -> :sswitch_3f
        0x7f0b0093 -> :sswitch_3e
        0x7f0b0094 -> :sswitch_3d
        0x7f0b0095 -> :sswitch_3c
        0x7f0b0096 -> :sswitch_3b
        0x7f0b0097 -> :sswitch_3a
        0x7f0b0099 -> :sswitch_39
        0x7f0b009a -> :sswitch_38
        0x7f0b009b -> :sswitch_37
        0x7f0b009c -> :sswitch_36
        0x7f0b009d -> :sswitch_35
        0x7f0b009e -> :sswitch_34
        0x7f0b009f -> :sswitch_33
        0x7f0b00a0 -> :sswitch_32
        0x7f0b00a2 -> :sswitch_31
        0x7f0b00cd -> :sswitch_30
        0x7f0b00cf -> :sswitch_2f
        0x7f0b00d0 -> :sswitch_2e
        0x7f0b00d2 -> :sswitch_2d
        0x7f0b00e0 -> :sswitch_2c
        0x7f0b00e2 -> :sswitch_2b
        0x7f0b00e5 -> :sswitch_2a
        0x7f0b00e6 -> :sswitch_29
        0x7f0b00e7 -> :sswitch_28
        0x7f0b00e8 -> :sswitch_27
        0x7f0b00eb -> :sswitch_26
        0x7f0b00ef -> :sswitch_25
        0x7f0b00f0 -> :sswitch_24
        0x7f0b00f1 -> :sswitch_23
        0x7f0b00f6 -> :sswitch_22
        0x7f0b017c -> :sswitch_21
        0x7f0b017d -> :sswitch_20
        0x7f0b017e -> :sswitch_1f
        0x7f0b017f -> :sswitch_1e
        0x7f0b0180 -> :sswitch_1d
        0x7f0b0182 -> :sswitch_1c
        0x7f0b0183 -> :sswitch_1b
        0x7f0b0190 -> :sswitch_1a
        0x7f0b0191 -> :sswitch_19
        0x7f0b0196 -> :sswitch_18
        0x7f0b0197 -> :sswitch_17
        0x7f0b019c -> :sswitch_16
        0x7f0b01a5 -> :sswitch_15
        0x7f0b01a8 -> :sswitch_14
        0x7f0b01be -> :sswitch_13
        0x7f0b01c3 -> :sswitch_12
        0x7f0b01d3 -> :sswitch_11
        0x7f0b01d4 -> :sswitch_10
        0x7f0b01e0 -> :sswitch_f
        0x7f0b01eb -> :sswitch_e
        0x7f0b01ec -> :sswitch_d
        0x7f0b01ed -> :sswitch_c
        0x7f0b01ff -> :sswitch_b
        0x7f0b0200 -> :sswitch_a
        0x7f0b0201 -> :sswitch_9
        0x7f0b0202 -> :sswitch_8
        0x7f0b0204 -> :sswitch_7
        0x7f0b0205 -> :sswitch_6
        0x7f0b0207 -> :sswitch_5
        0x7f0b020d -> :sswitch_4
        0x7f0b020f -> :sswitch_3
        0x7f0b0210 -> :sswitch_2
        0x7f0b0211 -> :sswitch_1
        0x7f0b024e -> :sswitch_0
    .end sparse-switch
.end method

.method public getDataBinder(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 3

    const-string/jumbo v0, "view must have a tag"

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 726
    :pswitch_0
    aget-object p3, p2, v1

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string v2, "layout-1280x800/layout_device_info_0"

    .line 728
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;[Landroid/view/View;)V

    return-object p3

    :cond_0
    const-string v2, "layout/layout_device_info_0"

    .line 731
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 732
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutDeviceInfoBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;[Landroid/view/View;)V

    return-object p3

    .line 727
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 736
    :cond_2
    :pswitch_1
    aget-object p3, p2, v1

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4

    const-string v0, "layout-1280x800/layout_contacts_info_0"

    .line 738
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 739
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding1280x800Impl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBinding1280x800Impl;-><init>(Landroid/databinding/DataBindingComponent;[Landroid/view/View;)V

    return-object p3

    :cond_3
    const-string v0, "layout/layout_contacts_info_0"

    .line 741
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 742
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;

    invoke-direct {p3, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutContactsInfoBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;[Landroid/view/View;)V

    return-object p3

    .line 737
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x7f0b017f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 753
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x7f0b00f1

    const v4, 0x7f0b01d3

    const v5, 0x7f0b0196

    const v6, 0x7f0b0190

    const v7, 0x7f0b017f

    const v8, 0x7f0b017d

    const v9, 0x7f0b0183

    const v10, 0x7f0b01eb

    const v11, 0x7f0b019c

    const v12, 0x7f0b0182

    const v13, 0x7f0b01ec

    const v14, 0x7f0b00e7

    const v15, 0x7f0b0180

    const v16, 0x7f0b00e8

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "layout/extend_album_0"

    .line 1206
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00cd

    return v0

    :sswitch_1
    const-string v2, "layout/tme_play_list_fragment_0"

    .line 1092
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0211

    return v0

    :sswitch_2
    const-string v2, "layout/custom_delete_record_dialog_0"

    .line 756
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0095

    return v0

    :sswitch_3
    const-string v2, "layout/activity_add_contacts_0"

    .line 840
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b001b

    return v0

    :sswitch_4
    const-string v2, "layout-1280x800/layout_image_text_0"

    .line 984
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v6

    :sswitch_5
    const-string v2, "layout/fragment_download_tips_0"

    .line 1038
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00e5

    return v0

    :sswitch_6
    const-string v2, "layout/extend_other_0"

    .line 834
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00d0

    return v0

    :sswitch_7
    const-string v2, "layout/fragment_relationship_list_0"

    .line 1074
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :sswitch_8
    const-string v2, "layout-1280x800/fragment_edit_mine_0"

    .line 1056
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v16

    :sswitch_9
    const-string v2, "layout-1280x800/layout_relationship_item_0"

    .line 1128
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v5

    :sswitch_a
    const-string v2, "layout/custom_select_item_layout_0"

    .line 804
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b009b

    return v0

    :sswitch_b
    const-string v2, "layout/layout_switch_item_0"

    .line 864
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0197

    return v0

    :sswitch_c
    const-string v2, "layout/contact_activity_main_0"

    .line 1086
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b008e

    return v0

    :sswitch_d
    const-string v2, "layout/activity_husky_details_0"

    .line 1200
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b002d

    return v0

    :sswitch_e
    const-string v2, "layout/select_item_layout_0"

    .line 1158
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :sswitch_f
    const-string v2, "layout/custom_detail_actiivty_0"

    .line 1272
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0096

    return v0

    :sswitch_10
    const-string v2, "layout-1280x800/fragment_relationship_list_0"

    .line 1080
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :sswitch_11
    const-string v2, "layout/delete_contacts_dialog_0"

    .line 972
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00a2

    return v0

    :sswitch_12
    const-string v2, "layout/tme_music_accounts_fragment_0"

    .line 1068
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b020f

    return v0

    :sswitch_13
    const-string v2, "layout/select_list_activity_0"

    .line 1260
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b01d4

    return v0

    :sswitch_14
    const-string v2, "layout-1280x800/layout_contacts_info_0"

    .line 1044
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v7

    :sswitch_15
    const-string v2, "layout/tme_collect_songs_fragment_0"

    .line 1194
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0207

    return v0

    :sswitch_16
    const-string v2, "layout/custom_activity_main_0"

    .line 906
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0093

    return v0

    :sswitch_17
    const-string v2, "layout/tme_brand_rank_item_0"

    .line 1122
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b01ff

    return v0

    :sswitch_18
    const-string v2, "layout/layout_download_tips_0"

    .line 762
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v12

    :sswitch_19
    const-string v2, "layout/contacts_camera_confirm_dialog_0"

    .line 828
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b008f

    return v0

    :sswitch_1a
    const-string v2, "layout/custom_layout_item_footer_0"

    .line 1140
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b009a

    return v0

    :sswitch_1b
    const-string v2, "layout-1280x800/layout_contacts_dial_0"

    .line 786
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v8

    :sswitch_1c
    const-string v2, "layout-1280x800/select_item_layout_0"

    .line 1152
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :sswitch_1d
    const-string v2, "layout-1280x800/layout_edit_item_0"

    .line 1230
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v9

    :sswitch_1e
    const-string v2, "layout/layout_relationship_item_0"

    .line 1134
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v5

    :sswitch_1f
    const-string v2, "layout/layout_item_footer_0"

    .line 1110
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0191

    return v0

    :sswitch_20
    const-string v2, "layout-1280x800/tab_call_record_0"

    .line 1008
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v10

    :sswitch_21
    const-string v2, "layout/layout_image_text_0"

    .line 990
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v6

    :sswitch_22
    const-string v2, "layout/play_list_activity_0"

    .line 1098
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b01be

    return v0

    :sswitch_23
    const-string v2, "layout/tme_channel_fragment_0"

    .line 924
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0204

    return v0

    :sswitch_24
    const-string v2, "layout/contacts_layout_exit_0"

    .line 966
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0091

    return v0

    :sswitch_25
    const-string v2, "layout/tab_contacts_0"

    .line 1188
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v13

    :sswitch_26
    const-string v2, "layout/layout_voip_to_pstn_0"

    .line 954
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v11

    :sswitch_27
    const-string v2, "layout/extend_more_0"

    .line 1104
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00cf

    return v0

    :sswitch_28
    const-string v2, "layout/tme_main_activity_0"

    .line 1266
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b020d

    return v0

    :sswitch_29
    const-string v2, "layout/custom_tab_cmcc_dial_0"

    .line 1176
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b009e

    return v0

    :sswitch_2a
    const-string v2, "layout-1280x800/fragment_edit_contacts_0"

    .line 918
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v14

    :sswitch_2b
    const-string v2, "layout/tme_music_feeds_fragment_0"

    .line 1026
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0210

    return v0

    :sswitch_2c
    const-string v2, "layout/radiostation_recyclerview_0"

    .line 1116
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b01c3

    return v0

    :sswitch_2d
    const-string v2, "layout/similar_gridview_item_0"

    .line 1170
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b01e0

    return v0

    :sswitch_2e
    const-string v2, "layout/custom_item_layout_0"

    .line 810
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0099

    return v0

    :sswitch_2f
    const-string v2, "layout/tme_channel_entrance_genie_0"

    .line 894
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0201

    return v0

    :sswitch_30
    const-string v2, "layout/tme_channel_rank_list_0"

    .line 1218
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0205

    return v0

    :sswitch_31
    const-string v2, "layout/custom_tab_call_record_0"

    .line 1254
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b009d

    return v0

    :sswitch_32
    const-string v2, "layout/fragment_radiostation_0"

    .line 1236
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00f0

    return v0

    :sswitch_33
    const-string v2, "layout/contacts_item_layout_0"

    .line 888
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0090

    return v0

    :sswitch_34
    const-string v2, "layout/activity_details_0"

    .line 774
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0028

    return v0

    :sswitch_35
    const-string v2, "layout/cmd_dispatch_activity_0"

    .line 1020
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b008d

    return v0

    :sswitch_36
    const-string v2, "layout/layout_contacts_info_0"

    .line 1050
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v7

    :sswitch_37
    const-string v2, "layout/layout_contacts_dial_0"

    .line 780
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v8

    :sswitch_38
    const-string v2, "layout/fragment_jokeplayer_0"

    .line 792
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00eb

    return v0

    :sswitch_39
    const-string v2, "layout/layout_edit_item_0"

    .line 1224
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v9

    :sswitch_3a
    const-string v2, "layout/activity_take_photo_0"

    .line 846
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0041

    return v0

    :sswitch_3b
    const-string v2, "layout/call_record_item_layout_0"

    .line 1212
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0084

    return v0

    :sswitch_3c
    const-string v2, "layout/custom_detail_cu_actiivty_0"

    .line 822
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0097

    return v0

    :sswitch_3d
    const-string v2, "layout/layout_contacts_avatar_0"

    .line 852
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b017c

    return v0

    :sswitch_3e
    const-string v2, "layout/tme_channel_entrance_0"

    .line 900
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0200

    return v0

    :sswitch_3f
    const-string v2, "layout/music_extend_fragment_0"

    .line 1242
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b01a5

    return v0

    :sswitch_40
    const-string v2, "layout/tab_call_record_0"

    .line 1014
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v10

    :sswitch_41
    const-string v2, "layout/custom_call_record_item_layout_0"

    .line 978
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0094

    return v0

    :sswitch_42
    const-string v2, "layout/tab_dial_0"

    .line 930
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b01ed

    return v0

    :sswitch_43
    const-string v2, "layout/fragment_download_tips_mini_0"

    .line 942
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00e6

    return v0

    :sswitch_44
    const-string v2, "layout/extend_similar_0"

    .line 798
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00d2

    return v0

    :sswitch_45
    const-string v2, "layout/layout_device_info_0"

    .line 1002
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v15

    :sswitch_46
    const-string v2, "layout-1280x800/layout_voip_to_pstn_0"

    .line 960
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v11

    :sswitch_47
    const-string v2, "layout/fragment_contacts_details_0"

    .line 870
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00e0

    return v0

    :sswitch_48
    const-string v2, "layout/fragment_device_details_0"

    .line 1248
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00e2

    return v0

    :sswitch_49
    const-string v2, "layout/fragment_mine_details_0"

    .line 816
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00ef

    return v0

    :sswitch_4a
    const-string v2, "layout/music_player_fragment_0"

    .line 948
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b01a8

    return v0

    :sswitch_4b
    const-string v2, "layout-1280x800/layout_download_tips_0"

    .line 768
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v12

    :sswitch_4c
    const-string v2, "layout/layout_contacts_error_0"

    .line 882
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b017e

    return v0

    :sswitch_4d
    const-string v2, "layout-1280x800/tab_contacts_0"

    .line 1182
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v13

    :sswitch_4e
    const-string v2, "layout/fragment_edit_contacts_0"

    .line 912
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v14

    :sswitch_4f
    const-string v2, "layout/ximalaya_player_fragment_0"

    .line 1032
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b024e

    return v0

    :sswitch_50
    const-string v2, "layout/fragment_stranger_details_0"

    .line 1164
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00f6

    return v0

    :sswitch_51
    const-string v2, "layout-1280x800/layout_device_info_0"

    .line 996
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v15

    :sswitch_52
    const-string v2, "layout/fragment_edit_mine_0"

    .line 1062
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v16

    :sswitch_53
    const-string v2, "layout/custom_select_list_activity_0"

    .line 858
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b009c

    return v0

    :sswitch_54
    const-string v2, "layout/tme_channel_entrance_netease_0"

    .line 1146
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0202

    return v0

    :sswitch_55
    const-string v2, "layout/custom_tab_dial_0"

    .line 876
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b00a0

    return v0

    :sswitch_56
    const-string v2, "layout/activity_voip_to_pstn_0"

    .line 1278
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0052

    return v0

    :sswitch_57
    const-string v2, "layout/custom_tab_contacts_0"

    .line 936
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b009f

    return v0

    :cond_1
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7f665069 -> :sswitch_57
        -0x7c92d222 -> :sswitch_56
        -0x7ae1d70c -> :sswitch_55
        -0x79cd3af9 -> :sswitch_54
        -0x79c8a399 -> :sswitch_53
        -0x78ec2a91 -> :sswitch_52
        -0x77ed819a -> :sswitch_51
        -0x7542c62c -> :sswitch_50
        -0x710da9d9 -> :sswitch_4f
        -0x6c19fc11 -> :sswitch_4e
        -0x696a77bf -> :sswitch_4d
        -0x65f7c7a3 -> :sswitch_4c
        -0x64c81b82 -> :sswitch_4b
        -0x5f244160 -> :sswitch_4a
        -0x5d0efd8f -> :sswitch_49
        -0x5a103dcc -> :sswitch_48
        -0x56b2c68f -> :sswitch_47
        -0x54bc252b -> :sswitch_46
        -0x53ce3fa8 -> :sswitch_45
        -0x52d68bc4 -> :sswitch_44
        -0x5183f19e -> :sswitch_43
        -0x4e6170f0 -> :sswitch_42
        -0x4d033d2f -> :sswitch_41
        -0x4952e64c -> :sswitch_40
        -0x46c11339 -> :sswitch_3f
        -0x46616bc5 -> :sswitch_3e
        -0x41b04d5a -> :sswitch_3d
        -0x3f5e3e5e -> :sswitch_3c
        -0x3f281ecb -> :sswitch_3b
        -0x3e30cc4a -> :sswitch_3a
        -0x3d3c34b7 -> :sswitch_39
        -0x3bba92e5 -> :sswitch_38
        -0x3711e603 -> :sswitch_37
        -0x2e40e445 -> :sswitch_36
        -0x288c2285 -> :sswitch_35
        -0x23d0a0b8 -> :sswitch_34
        -0x23c7c260 -> :sswitch_33
        -0x230dbfcc -> :sswitch_32
        -0x2154a8b0 -> :sswitch_31
        -0x1b877492 -> :sswitch_30
        -0x19813718 -> :sswitch_2f
        -0x18810682 -> :sswitch_2e
        -0x184ce861 -> :sswitch_2d
        -0x1774932a -> :sswitch_2c
        -0x11435ca3 -> :sswitch_2b
        -0xa02f503 -> :sswitch_2a
        -0x395f73d -> :sswitch_29
        -0x2a83a52 -> :sswitch_28
        0x7efe066 -> :sswitch_27
        0xb0cd723 -> :sswitch_26
        0xc01a7b3 -> :sswitch_25
        0x1179d19d -> :sswitch_24
        0x175f6d55 -> :sswitch_23
        0x22a3bbfb -> :sswitch_22
        0x250f6192 -> :sswitch_21
        0x254dc666 -> :sswitch_20
        0x25e3d3a8 -> :sswitch_1f
        0x263f635b -> :sswitch_1e
        0x2838b4d7 -> :sswitch_1d
        0x2b0f51d7 -> :sswitch_1c
        0x2f978c8b -> :sswitch_1b
        0x3127608c -> :sswitch_1a
        0x324bd9cb -> :sswitch_19
        0x348e71f0 -> :sswitch_18
        0x36c6af27 -> :sswitch_17
        0x37aaea11 -> :sswitch_16
        0x384c49ef -> :sswitch_15
        0x38688e49 -> :sswitch_14
        0x3da37883 -> :sswitch_13
        0x41051948 -> :sswitch_12
        0x472ffb16 -> :sswitch_11
        0x49a99d1a -> :sswitch_10
        0x4b7b3f1f -> :sswitch_f
        0x4f2e93c9 -> :sswitch_e
        0x4fe1bdfd -> :sswitch_d
        0x54f2e456 -> :sswitch_c
        0x57df22df -> :sswitch_b
        0x5a7220ad -> :sswitch_a
        0x5eb0dee9 -> :sswitch_9
        0x62f4937d -> :sswitch_8
        0x67a8cd0c -> :sswitch_7
        0x67d44021 -> :sswitch_6
        0x6df33fd6 -> :sswitch_5
        0x6e37a9c4 -> :sswitch_4
        0x734974ed -> :sswitch_3
        0x742528fc -> :sswitch_2
        0x745a2dcf -> :sswitch_1
        0x7548e3c0 -> :sswitch_0
    .end sparse-switch
.end method
