.class Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Landroid/os/Looper;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    .line 60
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Landroid/os/Looper;Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;-><init>(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;)Z
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->waitDone()Z

    move-result p0

    return p0
.end method

.method private waitDone()Z
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;Ljava/lang/Object;)V

    .line 80
    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$100(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v1, 0x0

    .line 85
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 87
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-string v0, "CameraManager"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 94
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v3, :cond_7

    if-eq v4, v2, :cond_6

    const/16 v5, 0xc9

    if-eq v4, v5, :cond_5

    const/16 v5, 0xca

    const/4 v6, 0x0

    if-eq v4, v5, :cond_3

    const/16 v5, 0x191

    if-eq v4, v5, :cond_1

    const/16 v5, 0x192

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Camera message="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 179
    :pswitch_0
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    return-void

    .line 184
    :pswitch_1
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5

    return-void

    .line 162
    :pswitch_2
    :try_start_1
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 163
    new-instance v5, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler$3;

    invoke-direct {v5, p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler$3;-><init>(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    :catch_0
    move-exception v4

    .line 170
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v4, "AUTO_FOCUS"

    .line 175
    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    return-void

    .line 135
    :pswitch_3
    :try_start_3
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_4
    const-string v5, "Could not set preview surface holder"

    .line 137
    invoke-static {v0, v5, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const-string v4, "SET_PREVIEW_DISPLAY_ASYNC"

    .line 139
    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    return-void

    .line 153
    :pswitch_4
    :try_start_5
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2

    :catch_2
    move-exception v4

    :try_start_6
    const-string v5, "Could not stop preview texture"

    .line 155
    invoke-static {v0, v5, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const-string v4, "STOP_PREVIEW"

    .line 157
    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    return-void

    .line 144
    :pswitch_5
    :try_start_7
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    :catch_3
    move-exception v4

    :try_start_8
    const-string v5, "Could not start preview texture"

    .line 146
    invoke-static {v0, v5, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const-string v4, "START_PREVIEW_ASYNC"

    .line 148
    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5

    return-void

    .line 126
    :pswitch_6
    :try_start_9
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    :catch_4
    move-exception v4

    :try_start_a
    const-string v5, "Could not set preview texture"

    .line 128
    invoke-static {v0, v5, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    const-string v4, "SET_PREVIEW_TEXTURE_ASYNC"

    .line 130
    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 188
    :cond_0
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    const-string v4, "SET_DISPLAY_ORIENTATION"

    .line 189
    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 207
    :cond_1
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_2

    const/4 v6, 0x1

    :cond_2
    invoke-virtual {v4, v6}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    return-void

    .line 200
    :cond_3
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$300(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 201
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v5}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$602(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 202
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4, v6}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$302(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Z)Z

    :cond_4
    return-void

    .line 193
    :cond_5
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4, v3}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$302(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Z)Z

    .line 194
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$400(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 195
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v5}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$400(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    const-string v4, "SET_PARAMETERS"

    .line 196
    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_6
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V

    .line 119
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

    .line 120
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$202(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    const-string v4, "RELEASE"

    .line 121
    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_7
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$202(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 97
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 98
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4, v3}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$302(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Z)Z

    .line 101
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$400(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-nez v4, :cond_9

    .line 102
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v5}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$402(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    goto :goto_5

    .line 105
    :cond_8
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_9

    .line 106
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$500(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler$2;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler$2;-><init>(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;Landroid/os/Message;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_5
    const-string v4, "OPEN_CAMERA"

    .line 114
    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5

    return-void

    :catch_5
    move-exception v4

    .line 214
    iget v5, p1, Landroid/os/Message;->what:I

    if-eq v5, v2, :cond_b

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_7

    .line 216
    :cond_a
    :try_start_b
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_6

    :catch_6
    const-string p1, "Fail to release the camera."

    .line 218
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$202(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    goto :goto_9

    .line 221
    :cond_b
    :goto_7
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraHandler;->this$0:Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;->access$200(Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v1

    if-nez v1, :cond_e

    .line 222
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_c

    .line 223
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_d

    .line 224
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraOpenErrorCallback;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraManager$CameraOpenErrorCallback;->onDeviceOpenFailure(I)V

    goto :goto_8

    :cond_c
    const-string p1, "Cannot handle message, mCamera is null."

    .line 227
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_8
    return-void

    .line 231
    :cond_e
    :goto_9
    throw v4

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
