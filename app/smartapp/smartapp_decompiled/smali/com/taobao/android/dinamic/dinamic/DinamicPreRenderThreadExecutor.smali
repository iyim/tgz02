.class public Lcom/taobao/android/dinamic/dinamic/DinamicPreRenderThreadExecutor;
.super Ljava/lang/Object;
.source "DinamicPreRenderThreadExecutor.java"


# static fields
.field private static singleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/dinamic/dinamic/DinamicPreRenderThreadExecutor;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static executor(Ljava/lang/Runnable;)V
    .locals 1

    .line 15
    sget-object v0, Lcom/taobao/android/dinamic/dinamic/DinamicPreRenderThreadExecutor;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
