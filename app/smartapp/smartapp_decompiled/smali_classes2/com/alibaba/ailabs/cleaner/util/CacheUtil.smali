.class public Lcom/alibaba/ailabs/cleaner/util/CacheUtil;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAllCacheSize()J
    .locals 5

    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getAllPackageIncludeSystem(Z)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 25
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v4

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getAppSizeByPkgName(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/alibaba/ailabs/appbox/bean/AppSizeInfo;->cacheBytes:J

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static getAllCacheSizeStr()Ljava/lang/String;
    .locals 2

    .line 31
    invoke-static {}, Lcom/alibaba/ailabs/cleaner/util/CacheUtil;->getAllCacheSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/cleaner/util/CacheUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSizeStr(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0xa

    mul-long p0, p0, v0

    const-wide/32 v2, 0x100000

    .line 36
    div-long/2addr p0, v2

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr p0, v0

    .line 38
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
