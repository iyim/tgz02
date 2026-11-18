.class public final Lcom/alibaba/ailabs/basedomain/common/BaiKeUTReporter;
.super Ljava/lang/Object;
.source "BaiKeUTReporter.java"


# static fields
.field private static final PAGE_NAME:Ljava/lang/String; = "baikereply"

.field private static final PLANET_CLICK_SPM_ID:Ljava/lang/String; = "a1z3lt.b74456517.c1597974535623.d1597974535623"

.field private static final PLANET_SHOWN_SPM_ID:Ljava/lang/String; = "a1z3lt.b74456517.c1597974568915.d1597974568915"

.field private static final SPM_ID:Ljava/lang/String; = "a1z3lt.b74456517"

.field private static final TAG:Ljava/lang/String; = "BaiKeUTReporter"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static infoPlanetClick()V
    .locals 3

    .line 37
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "spm-url"

    const-string v2, "a1z3lt.b74456517.c1597974535623.d1597974535623"

    .line 38
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "planetclick"

    const-string v2, "baikereply"

    .line 40
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "BaiKeUTReporter"

    const-string v1, "infoPlanetClick() called"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static infoPlanetPage()V
    .locals 3

    .line 46
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "spm-cnt"

    const-string v2, "a1z3lt.b74456517"

    .line 47
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "baikereply"

    const/4 v2, 0x0

    .line 49
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "BaiKeUTReporter"

    const-string v1, "infoPlanetPage() called"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static infoPlanetShown()V
    .locals 3

    .line 28
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "spm-url"

    const-string v2, "a1z3lt.b74456517.c1597974568915.d1597974568915"

    .line 29
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "planetexp"

    const-string v2, "baikereply"

    .line 31
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "BaiKeUTReporter"

    const-string v1, "infoPlanetShown() called"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
