.class Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$1;
.super Ljava/lang/Object;
.source "PermissionContentAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;I)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 82
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->access$000(Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;)Landroid/util/ArrayMap;

    move-result-object p1

    iget p2, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$1;->val$position:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->access$100(Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;)Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$IAuthPermissionData;

    move-result-object p1

    iget p2, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$1;->val$position:I

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$IAuthPermissionData;->addAuthPermissionData(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->access$000(Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;)Landroid/util/ArrayMap;

    move-result-object p1

    iget p2, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$1;->val$position:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;->access$100(Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;)Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$IAuthPermissionData;

    move-result-object p1

    iget p2, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$1;->val$position:I

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$IAuthPermissionData;->removeAuthPermissionData(I)V

    :goto_0
    return-void
.end method
