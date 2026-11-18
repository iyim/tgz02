.class public Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;
.super Ljava/lang/Object;
.source "CleanerOrangeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserData"
.end annotation


# instance fields
.field private apkType:I

.field private name:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 63
    instance-of v0, p1, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;->pkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;->pkgName:Ljava/lang/String;

    nop

    nop

    iget-object p1, p1, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 68
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getApkType()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;->apkType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public setApkType(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;->apkType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;->name:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserData{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pkgName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apkType =\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig$UserData;->apkType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
