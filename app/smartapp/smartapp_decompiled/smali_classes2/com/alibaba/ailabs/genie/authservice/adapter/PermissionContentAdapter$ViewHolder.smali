.class Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PermissionContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mAuthDesc:Landroid/widget/TextView;

.field mAuthName:Landroid/widget/TextView;

.field mSwitch:Landroid/widget/Switch;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;Landroid/view/View;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$ViewHolder;->this$0:Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget p1, Lcom/alibaba/ailabs/genie/authservice/R$id;->item_switch_developer:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 112
    sget p1, Lcom/alibaba/ailabs/genie/authservice/R$id;->item_permission_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$ViewHolder;->mAuthName:Landroid/widget/TextView;

    .line 113
    sget p1, Lcom/alibaba/ailabs/genie/authservice/R$id;->item_permission_desc:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/adapter/PermissionContentAdapter$ViewHolder;->mAuthDesc:Landroid/widget/TextView;

    return-void
.end method
