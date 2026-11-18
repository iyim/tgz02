.class Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;
.super Ljava/lang/Object;
.source "AVEManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

.field final synthetic val$args:Ljava/lang/String;

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " args = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 356
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    const-string v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 360
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    const-string v1, "activityChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 363
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$500(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 364
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$502(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$300(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$702(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$300(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 372
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$200(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 376
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$200(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$400(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 380
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$400(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    const-string v1, "muteState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 384
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 385
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$200(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 389
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$200(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$300(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 393
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$702(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$300(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_8
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    const-string v1, "touchEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 398
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 399
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_9
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    const-string v1, "queryMakeSense"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 402
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 403
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$cmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$9;->val$args:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_0
    return-void
.end method
