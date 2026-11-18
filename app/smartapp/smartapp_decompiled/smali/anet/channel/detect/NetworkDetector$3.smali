.class final Lanet/channel/detect/NetworkDetector$3;
.super Ljava/lang/Object;
.source "NetworkDetector.java"

# interfaces
.implements Lanet/channel/util/AppLifecycle$AppLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/detect/NetworkDetector;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public background()V
    .locals 4

    const/4 v0, 0x0

    .line 146
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "awcn.NetworkDetector"

    const-string v2, "background"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 149
    :try_start_0
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$100()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lanet/channel/detect/NetworkDetector;->access$000()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public forground()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
