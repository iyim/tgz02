.class Lcom/alibaba/ailabs/genie/assistant/ReceiverHub$ReceiverHubHolder;
.super Ljava/lang/Object;
.source "ReceiverHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverHubHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;-><init>(Lcom/alibaba/ailabs/genie/assistant/ReceiverHub$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub$ReceiverHubHolder;->sInstance:Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;
    .locals 1

    .line 16
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/ReceiverHub$ReceiverHubHolder;->sInstance:Lcom/alibaba/ailabs/genie/assistant/ReceiverHub;

    return-object v0
.end method
