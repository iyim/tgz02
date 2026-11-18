.class Lcom/alibaba/ailabs/genie/pay/GeniePay$SingletonHolder;
.super Ljava/lang/Object;
.source "GeniePay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/pay/GeniePay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static mInstance:Lcom/alibaba/ailabs/genie/pay/GeniePay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 136
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/GeniePay;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/pay/GeniePay;-><init>(Lcom/alibaba/ailabs/genie/pay/GeniePay$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/pay/GeniePay$SingletonHolder;->mInstance:Lcom/alibaba/ailabs/genie/pay/GeniePay;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/alibaba/ailabs/genie/pay/GeniePay;
    .locals 1

    .line 135
    sget-object v0, Lcom/alibaba/ailabs/genie/pay/GeniePay$SingletonHolder;->mInstance:Lcom/alibaba/ailabs/genie/pay/GeniePay;

    return-object v0
.end method
