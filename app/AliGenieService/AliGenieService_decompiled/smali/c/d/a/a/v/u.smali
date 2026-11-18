.class public Lc/d/a/a/v/u;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:Lc/d/a/a/v/u;


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:Ljava/util/TimeZone;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/a/v/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lc/d/a/a/v/u;-><init>(Ljava/lang/Long;Ljava/util/TimeZone;)V

    sput-object v0, Lc/d/a/a/v/u;->c:Lc/d/a/a/v/u;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/util/TimeZone;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/v/u;->a:Ljava/lang/Long;

    iput-object p2, p0, Lc/d/a/a/v/u;->b:Ljava/util/TimeZone;

    return-void
.end method
