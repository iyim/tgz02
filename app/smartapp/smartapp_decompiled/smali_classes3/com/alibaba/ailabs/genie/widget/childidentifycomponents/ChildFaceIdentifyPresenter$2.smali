.class Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;
.super Ljava/lang/Object;
.source "ChildFaceIdentifyPresenter.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient$onStatusListerner;


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

    .line 288
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatus(Ljava/lang/String;)V
    .locals 7

    .line 293
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    const-string v1, "ChildFaceIdentify"

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child result onStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 299
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "is_adult"

    .line 300
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "is_child"

    .line 301
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 p1, 0x0

    .line 303
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v2, 0x0

    :goto_1
    if-nez p1, :cond_1

    if-nez v2, :cond_1

    return-void

    .line 308
    :cond_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$200(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 309
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$200(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->setSurface(Landroid/view/Surface;)V

    .line 310
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$200(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/childface/ChildFaceClient;->stop()V

    .line 312
    :cond_2
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$300(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 313
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$400(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$400(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_4

    .line 314
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$500(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    move-result-object v3

    if-nez v3, :cond_6

    :cond_4
    return-void

    .line 318
    :cond_5
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$600(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    :cond_6
    const/4 v3, 0x1

    if-ne p1, v3, :cond_7

    .line 324
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$002(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;I)I

    .line 326
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$500(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;->onIdentifySuccess()V

    .line 327
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$100(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    move-result-object p1

    const/16 v0, 0x22

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;->showViewResult(I)V

    goto :goto_3

    :cond_7
    if-ne v2, v3, :cond_b

    .line 329
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$708(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)I

    .line 330
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$700(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)I

    move-result p1

    const/4 v2, 0x3

    if-lt p1, v2, :cond_8

    .line 331
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$500(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    move-result-object p1

    const/4 v5, -0x1

    const-string v6, "\u4eba\u8138\u8bc6\u522b\u8d85\u8fc7\u6b21\u6570"

    invoke-interface {p1, v5, v6}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;->onIdentifyFail(ILjava/lang/String;)V

    .line 333
    :cond_8
    sget-boolean p1, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-eqz p1, :cond_a

    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CountDownTimer onFinish: identifyCount : "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {v5}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$700(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u9a8c\u8bc1\u662f\u5426\u8d85\u8fc7\u6b21\u6570"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {v5}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$700(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)I

    move-result v5

    if-lt v5, v2, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_a
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    const/16 v0, 0x15

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$002(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;I)I

    .line 337
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$100(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    move-result-object p1

    const/16 v0, 0x21

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;->showViewResult(I)V

    .line 339
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$800(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 340
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$800(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 341
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$2;->this$0:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    invoke-static {p1, v4}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;->access$802(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    :cond_c
    return-void
.end method
