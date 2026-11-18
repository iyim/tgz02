.class public Lcom/alibaba/ailabs/base/util/PatternUtils;
.super Ljava/lang/Object;
.source "PatternUtils.java"


# static fields
.field public static final PATTERN_ADULT:Ljava/lang/String; = "adult"

.field public static final PATTERN_CHILD:Ljava/lang/String; = "child"

.field private static final TAG:Ljava/lang/String; = "PatternUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getCurrentPattern()Ljava/lang/String;
    .locals 4

    .line 31
    invoke-static {}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isNoah()Z

    move-result v0

    .line 32
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isChildMode(Landroid/content/Context;)Z

    move-result v1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPattern isNoah:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isChildMode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PatternUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const-string v0, "child"

    return-object v0

    :cond_0
    const-string v0, "adult"

    return-object v0
.end method

.method public static isAdult()Z
    .locals 2

    .line 46
    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->getCurrentPattern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adult"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isChild()Z
    .locals 2

    .line 55
    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->getCurrentPattern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "child"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
