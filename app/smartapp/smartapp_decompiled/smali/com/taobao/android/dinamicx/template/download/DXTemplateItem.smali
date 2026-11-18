.class public Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
.super Ljava/lang/Object;
.source "DXTemplateItem.java"


# static fields
.field public static final DEFAULT_VERSION:I = -0x1


# instance fields
.field private fileVersion:I

.field private identifier:Ljava/lang/String;

.field public isPreset:Z

.field public name:Ljava/lang/String;

.field public originalItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

.field public packageInfo:Lcom/taobao/android/dinamicx/template/download/DXTemplatePackageInfo;

.field public templateUrl:Ljava/lang/String;

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 11
    iput-wide v0, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->isPreset:Z

    .line 23
    iput v0, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->fileVersion:I

    return-void
.end method


# virtual methods
.method public checkValid()Z
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 63
    :cond_1
    check-cast p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 65
    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 68
    :cond_3
    iget v2, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->fileVersion:I

    iget v3, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->fileVersion:I

    if-eq v2, v3, :cond_4

    return v1

    .line 71
    :cond_4
    iget-wide v2, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    iget-wide v4, p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getFileVersion()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->fileVersion:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->identifier:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->identifier:Ljava/lang/String;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setFileVersion(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->fileVersion:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "templateUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
