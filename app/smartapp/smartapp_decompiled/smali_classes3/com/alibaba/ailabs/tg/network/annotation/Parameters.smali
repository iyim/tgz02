.class public interface abstract annotation Lcom/alibaba/ailabs/tg/network/annotation/Parameters;
.super Ljava/lang/Object;
.source "Parameters.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/alibaba/ailabs/tg/network/annotation/Parameters;
        value = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract value()[Ljava/lang/String;
.end method
