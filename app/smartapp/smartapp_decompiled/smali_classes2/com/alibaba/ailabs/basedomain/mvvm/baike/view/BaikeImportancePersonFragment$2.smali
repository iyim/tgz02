.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$2;
.super Ljava/lang/Object;
.source "BaikeImportancePersonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 144
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "BaikeImportancePersonFragment"

    const-string v0, "mSmallCardlView onClick"

    .line 147
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)V

    return-void
.end method
