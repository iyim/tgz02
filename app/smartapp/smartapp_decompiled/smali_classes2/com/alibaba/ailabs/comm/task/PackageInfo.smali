.class public Lcom/alibaba/ailabs/comm/task/PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfo.java"


# instance fields
.field public realPackageName:Ljava/lang/String;

.field public virtualPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public toReplace(Lcom/alibaba/ailabs/comm/task/PackageInfo;)Z
    .locals 3

    .line 39
    iget-object v0, p1, Lcom/alibaba/ailabs/comm/task/PackageInfo;->realPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/PackageInfo;->realPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 43
    :cond_0
    iget-object v0, p1, Lcom/alibaba/ailabs/comm/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/comm/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 45
    iget-object p1, p1, Lcom/alibaba/ailabs/comm/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/PackageInfo;->realPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/task/PackageInfo;->realPackageName:Ljava/lang/String;

    const-string v0, "com.alibaba.ailabs.genie.webapps"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageInfo{virtualPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/task/PackageInfo;->virtualPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", realPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/comm/task/PackageInfo;->realPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
