.class Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$Holder;
.super Ljava/lang/Object;
.source "GlobalHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final HANDLER:Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;-><init>(Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$1;)V

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$Holder;->HANDLER:Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;
    .locals 1

    .line 22
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$Holder;->HANDLER:Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;

    return-object v0
.end method
