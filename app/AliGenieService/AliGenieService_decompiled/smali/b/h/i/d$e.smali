.class public Lb/h/i/d$e;
.super Lb/h/i/d$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Lb/h/i/d$c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lb/h/i/d$d;-><init>(Lb/h/i/d$c;)V

    iput-boolean p2, p0, Lb/h/i/d$e;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lb/h/i/d$e;->b:Z

    return v0
.end method
