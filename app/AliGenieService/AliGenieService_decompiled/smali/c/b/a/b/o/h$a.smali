.class public Lc/b/a/b/o/h$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/b/o/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lc/b/a/b/o/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/b/a/b/o/h;

    invoke-direct {v0}, Lc/b/a/b/o/h;-><init>()V

    sput-object v0, Lc/b/a/b/o/h$a;->a:Lc/b/a/b/o/h;

    return-void
.end method
