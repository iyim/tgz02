.class public Lcom/taobao/securityjni/DynamicDataStore;
.super Ljava/lang/Object;
.source "DynamicDataStore.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_0
    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 101
    :cond_0
    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getByteArrayDDp(Ljava/lang/String;)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    .line 79
    :cond_0
    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getFloat(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 73
    :cond_0
    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 85
    :cond_0
    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongCompat(Ljava/lang/String;)J
    .locals 2

    .line 89
    invoke-virtual {p0, p1}, Lcom/taobao/securityjni/DynamicDataStore;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_0
    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringCompat(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/taobao/securityjni/DynamicDataStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringDDp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public putBoolean(Ljava/lang/String;Z)I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 45
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putBoolean(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public putByteArray(Ljava/lang/String;[B)I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 57
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putByteArray(Ljava/lang/String;[B)I

    move-result p1

    return p1
.end method

.method public putByteArrayDDp(Ljava/lang/String;[B)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public putFloat(Ljava/lang/String;F)I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 39
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putFloat(Ljava/lang/String;F)I

    move-result p1

    return p1
.end method

.method public putInt(Ljava/lang/String;I)I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 33
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public putLong(Ljava/lang/String;J)I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 51
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putLong(Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 27
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->putString(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public putStringDDp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeBoolean(Ljava/lang/String;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeBoolean(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeByteArray(Ljava/lang/String;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeByteArray(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeByteArrayDDp(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeFloat(Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeFloat(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeInt(Ljava/lang/String;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeInt(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeLong(Ljava/lang/String;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeLong(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeString(Ljava/lang/String;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/taobao/securityjni/DynamicDataStore;->proxy:Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p1}, Lcom/taobao/wireless/security/sdk/dynamicdatastore/IDynamicDataStoreComponent;->removeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeStringDDp(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
