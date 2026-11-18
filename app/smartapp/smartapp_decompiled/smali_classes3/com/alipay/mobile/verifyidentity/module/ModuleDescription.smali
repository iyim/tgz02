.class public Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;
.super Ljava/lang/Object;
.source "ModuleDescription.java"


# instance fields
.field protected mClassName:Ljava/lang/String;

.field protected mModuleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public setModuleName(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->mModuleName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleDescription [mModuleName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->mModuleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/ModuleDescription;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
