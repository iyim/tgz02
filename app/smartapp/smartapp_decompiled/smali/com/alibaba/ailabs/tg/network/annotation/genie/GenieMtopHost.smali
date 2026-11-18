.class public interface abstract annotation Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopHost;
.super Ljava/lang/Object;
.source "GenieMtopHost.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopHost;
        host = ""
        value = .enum Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ServiceType;->FAAS:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ServiceType;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract host()Ljava/lang/String;
.end method

.method public abstract value()Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ServiceType;
.end method
