.class public Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "FaceRecognizeClient.java"


# static fields
.field private static final METHOD_FACE_RECOGNIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FaceRecognizeClient"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient$1;-><init>(Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onDied()V
    .locals 2

    .line 35
    invoke-super {p0}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;->onDied()V

    const-string v0, "FaceRecognizeClient"

    const-string v1, " onDied"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onFaceRecognize(Ljava/lang/String;)V
    .locals 2

    .line 19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fr"

    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method
