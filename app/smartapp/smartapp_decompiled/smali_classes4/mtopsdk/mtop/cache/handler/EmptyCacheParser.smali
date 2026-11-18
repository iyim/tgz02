.class public Lmtopsdk/mtop/cache/handler/EmptyCacheParser;
.super Ljava/lang/Object;
.source "EmptyCacheParser.java"

# interfaces
.implements Lmtopsdk/mtop/cache/handler/ICacheParser;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.EmptyCacheParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public parse(Lmtopsdk/mtop/domain/ResponseSource;Landroid/os/Handler;)V
    .locals 0

    .line 14
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "mtopsdk.EmptyCacheParser"

    const-string p2, "[parse]EmptyCacheParser parse called"

    .line 15
    invoke-static {p1, p2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
