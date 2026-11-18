.class public abstract Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;
.super Landroid/databinding/ViewDataBinding;
.source "LayoutRelationshipItemBinding.java"


# instance fields
.field public final ivChecked:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final line:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mRelationship:Lcom/alibaba/ailabs/genie/contacts/model/Relationship;

.field public final tvRelationship:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 22
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->ivChecked:Landroid/widget/ImageView;

    .line 23
    iput-object p5, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->line:Landroid/view/View;

    .line 24
    iput-object p6, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->tvRelationship:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 42
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b0196

    .line 54
    invoke-static {p1, p0, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 38
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b0196

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-static {p0, v0, v1, v2, p1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/databinding/DataBindingComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const v0, 0x7f0b0196

    .line 46
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;

    return-object p0
.end method


# virtual methods
.method public getRelationship()Lcom/alibaba/ailabs/genie/contacts/model/Relationship;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/databinding/LayoutRelationshipItemBinding;->mRelationship:Lcom/alibaba/ailabs/genie/contacts/model/Relationship;

    return-object v0
.end method

.method public abstract setRelationship(Lcom/alibaba/ailabs/genie/contacts/model/Relationship;)V
    .param p1    # Lcom/alibaba/ailabs/genie/contacts/model/Relationship;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
