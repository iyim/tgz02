.class Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;
.super Ljava/lang/Object;
.source "ChildFaceIdentifyPresenter.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->initChildFaceClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 274
    sget-boolean p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz p1, :cond_0

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "surfaceChanged: format : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "width : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "height : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChildFaceIdentify"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 7

    .line 249
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    const-string v1, "ChildFaceIdentify"

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$000(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$000(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)I

    move-result p1

    const/16 v0, 0x18

    const/16 v2, 0x15

    const/16 v3, 0x14

    const/4 v4, 0x1

    if-eq p1, v3, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$000(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)I

    move-result p1

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$000(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)I

    move-result p1

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$200(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$100(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->setSurface(Landroid/view/Surface;)V

    .line 266
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$200(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->setChildFace(Z)V

    .line 267
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$200(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->start()V

    .line 268
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->beginCountDownTimer()V

    return-void

    .line 254
    :cond_2
    :goto_0
    sget-boolean p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz p1, :cond_6

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "surfaceCreated: currentStatus == CHILD_FACE_IDENTIFY_STATUS_IDENTIFY_SUCCESS  "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {v5}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$000(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceCreated: currentStatus == CHILD_FACE_IDENTIFY_STATUS_IDENTIFY_FAIL  "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$000(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)I

    move-result v3

    if-ne v3, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated: currentStatus == CHILD_FACE_IDENTIFY_STATUS_IDENTIFY_TIMEOUT  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$000(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)I

    move-result v2

    if-ne v2, v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "surfaceCreated: \u62e6\u622a\u975e\u6cd5\u542f\u52a8"

    .line 259
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 281
    sget-boolean p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz p1, :cond_0

    const-string p1, "ChildFaceIdentify"

    const-string v0, "surfaceDestroyed: "

    .line 282
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
