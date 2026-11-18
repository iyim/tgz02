.class Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$15;
.super Lcom/alibaba/ailabs/childmode/common/FlowTask;
.source "ApiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$15;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/childmode/common/FlowTask;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mChangeEyeYieldModeFlow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
