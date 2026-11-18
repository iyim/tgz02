.class public Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;
.super Ljava/lang/Object;
.source "ChildFaceIdentifyPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

.field childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

.field view:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 499
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->view:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    .line 500
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    .line 501
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    return-void
.end method


# virtual methods
.method public build()Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;
    .locals 2

    .line 534
    new-instance v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter;-><init>(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$1;)V

    return-object v0
.end method

.method public setChildFaceClickInterface(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    return-object p0
.end method

.method public setChildFaceIdentifyInterface(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    return-object p0
.end method

.method public setView(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyPresenter$Builder;->view:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$View;

    return-object p0
.end method
