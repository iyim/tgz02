.class public interface abstract Lmtopsdk/security/ISign;
.super Ljava/lang/Object;
.source "ISign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/security/ISign$SignCtx;
    }
.end annotation


# virtual methods
.method public abstract getAppKey(Lmtopsdk/security/ISign$SignCtx;)Ljava/lang/String;
.end method

.method public abstract getAvmpSign(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getCommonHmacSha1Sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMtopApiSign(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getSecBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract init(Lmtopsdk/mtop/global/MtopConfig;)V
    .param p1    # Lmtopsdk/mtop/global/MtopConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
