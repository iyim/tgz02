.class public Landroid/taobao/windvane/grey/GreyPageInfo;
.super Ljava/lang/Object;
.source "GreyPageInfo.java"


# static fields
.field public static final KEY_AIR_TAG:Ljava/lang/String; = "wxAirTag"

.field public static final KEY_CONTENT_VERSION:Ljava/lang/String; = "x-air-content-version"

.field public static final KEY_ENV:Ljava/lang/String; = "x-air-env"

.field public static final KEY_GREY:Ljava/lang/String; = "x-air-grey"

.field private static final TAG:Ljava/lang/String; = "GreyPageInfo"


# instance fields
.field URL:Ljava/lang/String;

.field envParam:Ljava/lang/String;

.field isGreyPage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Landroid/taobao/windvane/grey/GreyPageInfo;->URL:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Landroid/taobao/windvane/grey/GreyPageInfo;->envParam:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Landroid/taobao/windvane/grey/GreyPageInfo;->isGreyPage:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GreyPageInfo() called with: URL = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], envParam = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], isGreyPage = ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GreyPageInfo"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateOutputString()Ljava/lang/String;
    .locals 4

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    iget-object v1, p0, Landroid/taobao/windvane/grey/GreyPageInfo;->envParam:Ljava/lang/String;

    const-string v2, "="

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "x-air-env"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/grey/GreyPageInfo;->envParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 45
    :goto_0
    iget-object v3, p0, Landroid/taobao/windvane/grey/GreyPageInfo;->envParam:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_1

    const-string v1, "&"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "x-air-grey"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/grey/GreyPageInfo;->isGreyPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateOutputString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GreyPageInfo"

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEnvParam()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Landroid/taobao/windvane/grey/GreyPageInfo;->envParam:Ljava/lang/String;

    return-object v0
.end method

.method public getGreyPage()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Landroid/taobao/windvane/grey/GreyPageInfo;->isGreyPage:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Landroid/taobao/windvane/grey/GreyPageInfo;->URL:Ljava/lang/String;

    return-object v0
.end method
