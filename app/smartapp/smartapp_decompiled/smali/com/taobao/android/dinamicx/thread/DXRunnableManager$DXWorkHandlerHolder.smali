.class Lcom/taobao/android/dinamicx/thread/DXRunnableManager$DXWorkHandlerHolder;
.super Ljava/lang/Object;
.source "DXRunnableManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/thread/DXRunnableManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DXWorkHandlerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/taobao/android/dinamicx/thread/DXRunnableManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;-><init>(Lcom/taobao/android/dinamicx/thread/DXRunnableManager$1;)V

    sput-object v0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager$DXWorkHandlerHolder;->INSTANCE:Lcom/taobao/android/dinamicx/thread/DXRunnableManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/taobao/android/dinamicx/thread/DXRunnableManager;
    .locals 1

    .line 68
    sget-object v0, Lcom/taobao/android/dinamicx/thread/DXRunnableManager$DXWorkHandlerHolder;->INSTANCE:Lcom/taobao/android/dinamicx/thread/DXRunnableManager;

    return-object v0
.end method
