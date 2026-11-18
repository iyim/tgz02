.class public Lc/b/a/b/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lc/b/a/b/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/b/a/b/a;

    .line 1
    sget-object v1, Lc/b/a/b/o/g;->H:Landroid/content/Context;

    .line 2
    invoke-direct {v0, v1}, Lc/b/a/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc/b/a/b/a$a;->a:Lc/b/a/b/a;

    return-void
.end method
