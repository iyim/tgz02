.class Lcom/alibaba/genie/waft/extension/navigator/api/Navigator$Holder;
.super Ljava/lang/Object;
.source "Navigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;-><init>(Lcom/alibaba/genie/waft/extension/navigator/api/Navigator$1;)V

    sput-object v0, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator$Holder;->INSTANCE:Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;
    .locals 1

    .line 50
    sget-object v0, Lcom/alibaba/genie/waft/extension/navigator/api/Navigator$Holder;->INSTANCE:Lcom/alibaba/genie/waft/extension/navigator/api/Navigator;

    return-object v0
.end method
