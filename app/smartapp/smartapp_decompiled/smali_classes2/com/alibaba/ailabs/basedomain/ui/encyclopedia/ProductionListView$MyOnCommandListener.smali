.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$MyOnCommandListener;
.super Ljava/lang/Object;
.source "ProductionListView.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyOnCommandListener"
.end annotation


# instance fields
.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;",
            ">;)V"
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$MyOnCommandListener;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$MyOnCommandListener;->mReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " args:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SelectContent"

    .line 293
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 294
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView$MyOnCommandListener;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;->access$600(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ProductionListView;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method
