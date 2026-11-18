.class Lmtopsdk/xstate/XStateService$XStateStub;
.super Lmtopsdk/xstate/aidl/IXState$Stub;
.source "XStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/xstate/XStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XStateStub"
.end annotation


# instance fields
.field final synthetic this$0:Lmtopsdk/xstate/XStateService;


# direct methods
.method public constructor <init>(Lmtopsdk/xstate/XStateService;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lmtopsdk/xstate/XStateService$XStateStub;->this$0:Lmtopsdk/xstate/XStateService;

    invoke-direct {p0}, Lmtopsdk/xstate/aidl/IXState$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-static {p1}, Lmtopsdk/xstate/XStateDelegate;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lmtopsdk/xstate/XStateService$XStateStub;->this$0:Lmtopsdk/xstate/XStateService;

    invoke-virtual {v0}, Lmtopsdk/xstate/XStateService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/xstate/XStateDelegate;->init(Landroid/content/Context;)V

    return-void
.end method

.method public removeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    invoke-static {p1}, Lmtopsdk/xstate/XStateDelegate;->removeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    invoke-static {p1, p2}, Lmtopsdk/xstate/XStateDelegate;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public unInit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    invoke-static {}, Lmtopsdk/xstate/XStateDelegate;->unInit()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
