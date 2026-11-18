.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$3;
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

    .line 154
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
