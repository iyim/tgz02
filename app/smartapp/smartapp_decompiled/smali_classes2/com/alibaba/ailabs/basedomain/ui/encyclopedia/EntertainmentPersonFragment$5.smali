.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment$5;
.super Ljava/lang/Object;
.source "EntertainmentPersonFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;->fillData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EntertainmentPersonFragment;->autoRollText()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoRollText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
