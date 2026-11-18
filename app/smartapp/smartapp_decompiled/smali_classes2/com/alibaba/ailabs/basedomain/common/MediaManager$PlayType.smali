.class final enum Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;
.super Ljava/lang/Enum;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/common/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PlayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

.field public static final enum LOCAL_ALARM:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

.field public static final enum ONLINE_ALARM:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

.field public static final enum TTS_URL:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    const/4 v1, 0x0

    const-string v2, "LOCAL_ALARM"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->LOCAL_ALARM:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    .line 42
    new-instance v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    const/4 v2, 0x1

    const-string v3, "ONLINE_ALARM"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->ONLINE_ALARM:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    .line 43
    new-instance v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    const/4 v3, 0x2

    const-string v4, "TTS_URL"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->TTS_URL:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    const/4 v0, 0x3

    .line 40
    new-array v0, v0, [Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    sget-object v4, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->LOCAL_ALARM:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->ONLINE_ALARM:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->TTS_URL:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->$VALUES:[Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;
    .locals 1

    .line 40
    const-class v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;
    .locals 1

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->$VALUES:[Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    return-object v0
.end method
