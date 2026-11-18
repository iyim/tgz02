.class public final enum Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;
.super Ljava/lang/Enum;
.source "PlayMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

.field public static final enum PLAY_LOOP:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

.field public static final enum PLAY_REPEATONE:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

.field public static final enum PLAY_SHUFFLE:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "PLAY_LOOP"

    invoke-direct {v0, v3, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->PLAY_LOOP:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    .line 15
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    const/4 v3, 0x2

    const-string v4, "PLAY_SHUFFLE"

    invoke-direct {v0, v4, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->PLAY_SHUFFLE:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    .line 19
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    const/4 v4, 0x3

    const-string v5, "PLAY_REPEATONE"

    invoke-direct {v0, v5, v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->PLAY_REPEATONE:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    .line 6
    new-array v0, v4, [Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    sget-object v4, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->PLAY_LOOP:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->PLAY_SHUFFLE:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->PLAY_REPEATONE:Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->$VALUES:[Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;
    .locals 1

    .line 6
    const-class v0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;
    .locals 1

    .line 6
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->$VALUES:[Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/constants/PlayMode;->index:I

    return v0
.end method
