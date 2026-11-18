.class Lcom/alibaba/ailabs/basedomain/ui/BaseService$3;
.super Ljava/lang/Object;
.source "BaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/BaseService;->onHandleWork(Landroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/BaseService;

.field final synthetic val$startIdStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/BaseService;Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/BaseService;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$3;->val$startIdStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/BaseService;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$3;->val$startIdStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->access$100(Lcom/alibaba/ailabs/basedomain/ui/BaseService;Ljava/lang/String;)V

    return-void
.end method
