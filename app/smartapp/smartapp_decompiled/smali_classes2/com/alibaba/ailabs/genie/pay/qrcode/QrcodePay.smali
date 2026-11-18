.class public Lcom/alibaba/ailabs/genie/pay/qrcode/QrcodePay;
.super Ljava/lang/Object;
.source "QrcodePay.java"


# static fields
.field private static mInstance:Lcom/alibaba/ailabs/genie/pay/qrcode/QrcodePay;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/qrcode/QrcodePay;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/pay/qrcode/QrcodePay;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/pay/qrcode/QrcodePay;->mInstance:Lcom/alibaba/ailabs/genie/pay/qrcode/QrcodePay;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/ailabs/genie/pay/qrcode/QrcodePay;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/genie/pay/qrcode/QrcodePay;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/pay/qrcode/QrcodePay;->mInstance:Lcom/alibaba/ailabs/genie/pay/qrcode/QrcodePay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/qrcode/QrcodePay;->mContext:Landroid/content/Context;

    return-void
.end method
