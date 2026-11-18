.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$8;
.super Ljava/lang/Object;
.source "BaikeImportancePersonFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$8;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$8;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaikeImportancePersonFragment mAutoChangePageRunnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
