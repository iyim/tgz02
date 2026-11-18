.class public final enum Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;
.super Ljava/lang/Enum;
.source "IAgmcPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MusicControlType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

.field public static final enum MUSIC_CONTROL_ADD_FAVORITE:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

.field public static final enum MUSIC_CONTROL_CANCEL_FAVORITE:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

.field public static final enum MUSIC_CONTROL_NEXT:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

.field public static final enum MUSIC_CONTROL_PREVIOUS:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

.field public static final enum MUSIC_CONTROL_REFRESH:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

.field public static final enum MUSIC_CONTROL_SET_PLAY_MODE:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

.field public static final enum MUSIC_CONTROL_SET_QUALITY:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 15
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    const/4 v1, 0x0

    const-string v2, "MUSIC_CONTROL_NEXT"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_NEXT:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    .line 19
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    const/4 v2, 0x1

    const-string v3, "MUSIC_CONTROL_PREVIOUS"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_PREVIOUS:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    .line 23
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    const/4 v3, 0x2

    const-string v4, "MUSIC_CONTROL_ADD_FAVORITE"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_ADD_FAVORITE:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    .line 27
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    const/4 v4, 0x3

    const-string v5, "MUSIC_CONTROL_CANCEL_FAVORITE"

    invoke-direct {v0, v5, v4}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_CANCEL_FAVORITE:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    .line 31
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    const/4 v5, 0x4

    const-string v6, "MUSIC_CONTROL_REFRESH"

    invoke-direct {v0, v6, v5}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_REFRESH:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    .line 35
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    const/4 v6, 0x5

    const-string v7, "MUSIC_CONTROL_SET_PLAY_MODE"

    invoke-direct {v0, v7, v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_SET_PLAY_MODE:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    .line 39
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    const/4 v7, 0x6

    const-string v8, "MUSIC_CONTROL_SET_QUALITY"

    invoke-direct {v0, v8, v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_SET_QUALITY:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    const/4 v0, 0x7

    .line 11
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    sget-object v8, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_NEXT:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_PREVIOUS:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_ADD_FAVORITE:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_CANCEL_FAVORITE:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_REFRESH:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_SET_PLAY_MODE:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->MUSIC_CONTROL_SET_QUALITY:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->$VALUES:[Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;
    .locals 1

    .line 11
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;
    .locals 1

    .line 11
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->$VALUES:[Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer$MusicControlType;

    return-object v0
.end method
