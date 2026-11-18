.class Lcom/taobao/tao/log/task/CommandManager$SingletonHolder;
.super Ljava/lang/Object;
.source "CommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/log/task/CommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/taobao/tao/log/task/CommandManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/taobao/tao/log/task/CommandManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/tao/log/task/CommandManager;-><init>(Lcom/taobao/tao/log/task/CommandManager$1;)V

    sput-object v0, Lcom/taobao/tao/log/task/CommandManager$SingletonHolder;->INSTANCE:Lcom/taobao/tao/log/task/CommandManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/taobao/tao/log/task/CommandManager;
    .locals 1

    .line 30
    sget-object v0, Lcom/taobao/tao/log/task/CommandManager$SingletonHolder;->INSTANCE:Lcom/taobao/tao/log/task/CommandManager;

    return-object v0
.end method
