.class public Lcom/alibaba/ailabs/genie/smartapp/GenieGlobleConfig;
.super Ljava/lang/Object;
.source "GenieGlobleConfig.java"


# static fields
.field private static HOME_ACTIVITY:Ljava/lang/String; = "com.alibaba.ailabs.genie.launcher.activity.HomeActivity"

.field public static final MUSIC_ACTIVITY:Ljava/lang/String; = "com.alibaba.ailabs.genie.musicplayer.activity.MainActivity"

.field public static final MUSIC_LIST:[Ljava/lang/String;

.field public static final MUSIC_PLAY_LIST_ACTIVITY:Ljava/lang/String; = "com.alibaba.ailabs.genie.musicplayer.activity.PlayListActivity"

.field public static final VIDEO_CHILE_PLAY_ACTIVITY:Ljava/lang/String; = "com.youkuchild.android.playback.ChildPlayerActivity"

.field public static final VIDEO_COMMON_PLAY_ACTIVITY:Ljava/lang/String; = "com.youku.iot.player.CommonPlayerActivity"

.field public static final VIDEO_LIST:[Ljava/lang/String;

.field public static final VIDEO_PLAY_ACTIVITY:Ljava/lang/String; = "com.yunos.tv.yingshi.boutique.bundle.detail.activity.PlayerActivity"

.field public static final VIDEO_PLAY_DETAIL_ACTIVITY:Ljava/lang/String; = "com.yunos.tv.yingshi.boutique.bundle.detail.activity.YingshiDetailActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.yunos.tv.yingshi.boutique.bundle.detail.activity.PlayerActivity"

    const-string v1, "com.yunos.tv.yingshi.boutique.bundle.detail.activity.YingshiDetailActivity"

    const-string v2, "com.youku.iot.player.CommonPlayerActivity"

    const-string v3, "com.youkuchild.android.playback.ChildPlayerActivity"

    .line 37
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/smartapp/GenieGlobleConfig;->VIDEO_LIST:[Ljava/lang/String;

    const-string v0, "com.alibaba.ailabs.genie.musicplayer.activity.MainActivity"

    const-string v1, "com.alibaba.ailabs.genie.musicplayer.activity.PlayListActivity"

    .line 44
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/smartapp/GenieGlobleConfig;->MUSIC_LIST:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
