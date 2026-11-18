.class public Lmtopsdk/security/ISign$SignCtx;
.super Ljava/lang/Object;
.source "ISign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/security/ISign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignCtx"
.end annotation


# instance fields
.field public authCode:Ljava/lang/String;

.field public index:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lmtopsdk/security/ISign$SignCtx;->index:I

    .line 22
    iput-object p2, p0, Lmtopsdk/security/ISign$SignCtx;->authCode:Ljava/lang/String;

    return-void
.end method
