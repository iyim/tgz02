.class Lcom/taobao/tao/log/TLogInitializer$SingletonHolder;
.super Ljava/lang/Object;
.source "TLogInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/log/TLogInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/taobao/tao/log/TLogInitializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    new-instance v0, Lcom/taobao/tao/log/TLogInitializer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/tao/log/TLogInitializer;-><init>(Lcom/taobao/tao/log/TLogInitializer$1;)V

    sput-object v0, Lcom/taobao/tao/log/TLogInitializer$SingletonHolder;->INSTANCE:Lcom/taobao/tao/log/TLogInitializer;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/taobao/tao/log/TLogInitializer;
    .locals 1

    .line 100
    sget-object v0, Lcom/taobao/tao/log/TLogInitializer$SingletonHolder;->INSTANCE:Lcom/taobao/tao/log/TLogInitializer;

    return-object v0
.end method
