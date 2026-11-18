.class final Lcom/alibaba/ailabs/genie/second/mock/MockManager$Holder;
.super Ljava/lang/Object;
.source "MockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/mock/MockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/alibaba/ailabs/genie/second/mock/MockManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/alibaba/ailabs/genie/second/mock/MockManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/second/mock/MockManager;-><init>(Lcom/alibaba/ailabs/genie/second/mock/MockManager$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/second/mock/MockManager$Holder;->INSTANCE:Lcom/alibaba/ailabs/genie/second/mock/MockManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/alibaba/ailabs/genie/second/mock/MockManager;
    .locals 1

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/genie/second/mock/MockManager$Holder;->INSTANCE:Lcom/alibaba/ailabs/genie/second/mock/MockManager;

    return-object v0
.end method
