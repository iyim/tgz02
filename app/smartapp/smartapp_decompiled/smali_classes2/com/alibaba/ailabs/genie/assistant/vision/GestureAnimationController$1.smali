.class Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;
.super Ljava/lang/Object;
.source "GestureAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->getGestureUi(IILorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

.field final synthetic val$action:I

.field final synthetic val$data:Lorg/json/JSONObject;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;IILorg/json/JSONObject;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    iput p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$mode:I

    iput p3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$action:I

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$data:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 302
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$100(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)V

    .line 303
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickBeforeCancel()V

    .line 304
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$mode:I

    const/16 v1, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$action:I

    if-ne v0, v3, :cond_0

    .line 305
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$200(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setState(I)V

    .line 306
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$300(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickBefore()V

    goto/16 :goto_0

    .line 309
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$mode:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$action:I

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickBeforeCancel()V

    goto/16 :goto_0

    .line 312
    :cond_1
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$mode:I

    const/4 v4, 0x7

    const-string v5, "type"

    const/4 v6, 0x2

    if-nez v0, :cond_5

    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$action:I

    if-ne v0, v6, :cond_5

    .line 313
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickBeforeCancel()V

    .line 314
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$200(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setState(I)V

    .line 315
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$300(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$data:Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 321
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickAfterLeft()V

    goto/16 :goto_0

    :cond_2
    if-ne v0, v6, :cond_3

    .line 324
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickAfterRight()V

    goto/16 :goto_0

    :cond_3
    if-ne v0, v4, :cond_4

    .line 327
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickAfterBottom()V

    goto/16 :goto_0

    :cond_4
    if-ne v0, v1, :cond_13

    .line 330
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickAfterTop()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 336
    :cond_5
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$mode:I

    const/4 v7, 0x4

    if-nez v0, :cond_6

    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$action:I

    if-ne v0, v7, :cond_6

    .line 339
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$data:Lorg/json/JSONObject;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 341
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickDetected()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 345
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 347
    :cond_6
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$mode:I

    if-ne v0, v3, :cond_7

    .line 348
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickBeforeCancel()V

    .line 349
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$action:I

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$data:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$400(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;ILorg/json/JSONObject;)V

    goto/16 :goto_0

    :cond_7
    if-ne v0, v6, :cond_11

    .line 350
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$action:I

    if-ne v0, v6, :cond_11

    .line 351
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickBeforeCancel()V

    .line 352
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$200(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setState(I)V

    .line 355
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$data:Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 358
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickAfterLeft()V

    goto/16 :goto_0

    :cond_8
    if-ne v0, v6, :cond_9

    .line 363
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickAfterRight()V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    .line 365
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    sget v2, Lcom/alibaba/ailabs/genie/agui/adapter/R$drawable;->static_ok:I

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$500(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickMiddle(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    if-ne v0, v7, :cond_b

    .line 369
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    sget v2, Lcom/alibaba/ailabs/genie/agui/adapter/R$drawable;->static_stop:I

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$500(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickMiddle(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x5

    if-ne v0, v2, :cond_c

    .line 371
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    sget v2, Lcom/alibaba/ailabs/genie/agui/adapter/R$drawable;->static_back:I

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$500(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickMiddle(ILjava/lang/String;)V

    goto :goto_0

    :cond_c
    const/4 v2, 0x6

    if-ne v0, v2, :cond_d

    .line 375
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    sget v2, Lcom/alibaba/ailabs/genie/agui/adapter/R$drawable;->static_good:I

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$500(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickMiddle(ILjava/lang/String;)V

    goto :goto_0

    :cond_d
    if-ne v0, v4, :cond_e

    .line 378
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickAfterBottom()V

    goto :goto_0

    :cond_e
    if-ne v0, v1, :cond_f

    .line 381
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickAfterTop()V

    goto :goto_0

    :cond_f
    const/16 v1, 0x9

    if-ne v0, v1, :cond_10

    .line 383
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    sget v2, Lcom/alibaba/ailabs/genie/agui/adapter/R$drawable;->static_mute:I

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$500(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickMiddle(ILjava/lang/String;)V

    goto :goto_0

    :cond_10
    const/16 v1, 0xa

    if-ne v0, v1, :cond_13

    .line 386
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    sget v2, Lcom/alibaba/ailabs/genie/agui/adapter/R$drawable;->static_mute:I

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {v3, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$500(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickMiddle(ILjava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 390
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 392
    :cond_11
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$mode:I

    if-nez v0, :cond_12

    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$action:I

    if-nez v0, :cond_12

    .line 393
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickBeforeCancel()V

    .line 394
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$200(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;)Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setState(I)V

    goto :goto_0

    .line 396
    :cond_12
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->clickBeforeCancel()V

    .line 399
    :cond_13
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController$1;->val$action:I

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;->access$602(Lcom/alibaba/ailabs/genie/assistant/vision/GestureAnimationController;I)I

    return-void
.end method
