.class public interface abstract Lcom/alibaba/ailabs/tg/mtop/callback/MtopProcessorCallback;
.super Ljava/lang/Object;
.source "MtopProcessorCallback.java"


# virtual methods
.method public abstract afterRequestProcessor(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;IZLmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;",
            "IZ",
            "Lmtopsdk/mtop/domain/BaseOutDo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract beforeRequestProcessor(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)Z
    .param p1    # Lmtopsdk/mtop/domain/IMTOPDataObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;",
            "I)Z"
        }
    .end annotation
.end method
