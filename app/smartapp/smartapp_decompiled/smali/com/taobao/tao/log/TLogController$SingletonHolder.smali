.class Lcom/taobao/tao/log/TLogController$SingletonHolder;
.super Ljava/lang/Object;
.source "TLogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/log/TLogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/taobao/tao/log/TLogController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/taobao/tao/log/TLogController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/tao/log/TLogController;-><init>(Lcom/taobao/tao/log/TLogController$1;)V

    sput-object v0, Lcom/taobao/tao/log/TLogController$SingletonHolder;->INSTANCE:Lcom/taobao/tao/log/TLogController;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/taobao/tao/log/TLogController;
    .locals 1

    .line 28
    sget-object v0, Lcom/taobao/tao/log/TLogController$SingletonHolder;->INSTANCE:Lcom/taobao/tao/log/TLogController;

    return-object v0
.end method
