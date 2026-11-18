.class public Lcom/alibaba/ailabs/systemui/AppNavInfo;
.super Ljava/lang/Object;
.source "AppNavInfo.java"


# static fields
.field public static final ACTION_CALL:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.contacts/page/home?modeType=0"

.field public static final ACTION_CHILD_ABC:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=study&menuBusinessName=%E7%88%B1%E5%AD%A6%E4%B9%A0&modeType=1&groupId=2"

.field public static final ACTION_CHILD_CALL:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.contacts/page/home?modeType=1"

.field public static final ACTION_CHILD_CARTOON:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=cartoon&menuBusinessName=%E7%9C%8B%E5%8A%A8%E7%94%BB&modeType=1&groupId=1"

.field public static final ACTION_CHILD_LISTEN:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=audio&menuBusinessName=%E5%90%AC%E6%95%85%E4%BA%8B&modeType=1"

.field public static final ACTION_CHILD_MUSIC:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=music&menuBusinessName=%E5%90%AC%E5%84%BF%E6%AD%8C&modeType=1"

.field public static final ACTION_CHILD_STAR:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=star&menuBusinessName=%E5%A4%A7%E6%98%8E%E6%98%9F&modeType=1&groupId=3"

.field public static final ACTION_FILM:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=video&menuBusinessName=\u89c6\u9891&modeType=0"

.field public static final ACTION_IOT:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.iot/house?modeType=0"

.field public static final ACTION_MUSIC:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=music&menuBusinessName=\u97f3\u4e50&modeType=0"

.field public static final ACTION_SHOPPING:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=shopping&menuBusinessName=\u8d2d\u7269&modeType=0"

.field public static final ACTION_VOICE:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=audio&menuBusinessName=\u97f3\u9891&modeType=0"

.field public static final TYPE_BACK:I = 0x1

.field public static final TYPE_CHILD_ABC:I = 0xd

.field public static final TYPE_CHILD_CALL:I = 0xb

.field public static final TYPE_CHILD_CARTOON:I = 0x8

.field public static final TYPE_CHILD_LISTEN:I = 0xa

.field public static final TYPE_CHILD_MUSIC:I = 0x9

.field public static final TYPE_CHILD_STAR:I = 0xc

.field public static final TYPE_FILM:I = 0x6

.field public static final TYPE_HOME:I = 0x2

.field public static final TYPE_IOT:I = 0xe

.field public static final TYPE_MUSIC:I = 0x5

.field public static final TYPE_SHOPPING:I = 0x4

.field public static final TYPE_VIDEO:I = 0x3

.field public static final TYPE_VOICE:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAction(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    const-string p0, "genie://com.alibaba.ailabs.genie.iot/house?modeType=0"

    goto :goto_0

    :pswitch_1
    const-string p0, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=study&menuBusinessName=%E7%88%B1%E5%AD%A6%E4%B9%A0&modeType=1&groupId=2"

    goto :goto_0

    :pswitch_2
    const-string p0, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=star&menuBusinessName=%E5%A4%A7%E6%98%8E%E6%98%9F&modeType=1&groupId=3"

    goto :goto_0

    :pswitch_3
    const-string p0, "genie://com.alibaba.ailabs.genie.contacts/page/home?modeType=1"

    goto :goto_0

    :pswitch_4
    const-string p0, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=audio&menuBusinessName=%E5%90%AC%E6%95%85%E4%BA%8B&modeType=1"

    goto :goto_0

    :pswitch_5
    const-string p0, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=music&menuBusinessName=%E5%90%AC%E5%84%BF%E6%AD%8C&modeType=1"

    goto :goto_0

    :pswitch_6
    const-string p0, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=cartoon&menuBusinessName=%E7%9C%8B%E5%8A%A8%E7%94%BB&modeType=1&groupId=1"

    goto :goto_0

    :pswitch_7
    const-string p0, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=audio&menuBusinessName=\u97f3\u9891&modeType=0"

    goto :goto_0

    :pswitch_8
    const-string p0, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=video&menuBusinessName=\u89c6\u9891&modeType=0"

    goto :goto_0

    :pswitch_9
    const-string p0, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=music&menuBusinessName=\u97f3\u4e50&modeType=0"

    goto :goto_0

    :pswitch_a
    const-string p0, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=shopping&menuBusinessName=\u8d2d\u7269&modeType=0"

    goto :goto_0

    :pswitch_b
    const-string p0, "genie://com.alibaba.ailabs.genie.contacts/page/home?modeType=0"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSrc(IZ)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_0

    :pswitch_0
    if-eqz p1, :cond_0

    .line 129
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->iot_pressed:I

    goto/16 :goto_0

    :cond_0
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->iot_normal:I

    goto/16 :goto_0

    :pswitch_1
    if-eqz p1, :cond_1

    .line 116
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->child_like_learn_checked:I

    goto/16 :goto_0

    :cond_1
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->child_like_learn:I

    goto/16 :goto_0

    :pswitch_2
    if-eqz p1, :cond_2

    .line 120
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->child_star_checked:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->child_star:I

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_3

    .line 113
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->child_call_checked:I

    goto :goto_0

    :cond_3
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->child_call:I

    goto :goto_0

    :pswitch_4
    if-eqz p1, :cond_4

    .line 110
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->child_listen_checked:I

    goto :goto_0

    :cond_4
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->child_listen:I

    goto :goto_0

    :pswitch_5
    if-eqz p1, :cond_5

    .line 126
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->child_music_checked:I

    goto :goto_0

    :cond_5
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->child_music:I

    goto :goto_0

    :pswitch_6
    if-eqz p1, :cond_6

    .line 123
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->child_cartoon_checked:I

    goto :goto_0

    :cond_6
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->child_cartoon:I

    goto :goto_0

    :pswitch_7
    if-eqz p1, :cond_7

    .line 107
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->voice_checked:I

    goto :goto_0

    :cond_7
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->voice:I

    goto :goto_0

    :pswitch_8
    if-eqz p1, :cond_8

    .line 104
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->film_checked:I

    goto :goto_0

    :cond_8
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->film:I

    goto :goto_0

    :pswitch_9
    if-eqz p1, :cond_9

    .line 98
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->music_checked:I

    goto :goto_0

    :cond_9
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->music:I

    goto :goto_0

    :pswitch_a
    if-eqz p1, :cond_a

    .line 101
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->shopping_checked:I

    goto :goto_0

    :cond_a
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->shopping:I

    goto :goto_0

    :pswitch_b
    if-eqz p1, :cond_b

    .line 94
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->video_checked:I

    goto :goto_0

    :cond_b
    sget p0, Lcom/alibaba/ailabs/systemui/R$drawable;->video:I

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
