.class public Lmtopsdk/mtop/cache/domain/AppConfigDo;
.super Ljava/lang/Object;
.source "AppConfigDo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appConf:Ljava/lang/String;

.field public appConfigVersion:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lmtopsdk/mtop/cache/domain/AppConfigDo;->appConf:Ljava/lang/String;

    .line 18
    iput-wide p2, p0, Lmtopsdk/mtop/cache/domain/AppConfigDo;->appConfigVersion:J

    return-void
.end method
