.class public Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;
.super Ljava/lang/Object;
.source "ChildFaceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

.field private childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

.field private context:Landroid/content/Context;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public build()Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    if-nez v0, :cond_1

    .line 162
    :cond_0
    sget-boolean v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyStatus;->debugMode:Z

    if-nez v0, :cond_2

    .line 166
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;-><init>(Landroid/content/Context;)V

    .line 167
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->setTitle(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->setChildFaceClickInterface(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;)V

    .line 169
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog;->setChildFaceIdentifyInterface(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;)V

    return-object v0

    .line 163
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Builder \u6784\u5efa\u9519\u8bef"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildFaceClickInterface(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;->childFaceClickInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceClickInterface;

    return-object p0
.end method

.method public setChildFaceIdentifyInterface(Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;->childFaceIdentifyInterface:Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceIdentifyContract$ChildFaceIdentifyInterface;

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/childidentifycomponents/ChildFaceDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
