<template>
    <div>
        <h2>Propozycje samochodów:</h2>
        <ul>
            <li v-for="car in carProposals" :key="car.Make">
                <h3>{{ car.Make }}</h3>
                <p>Model: {{ car.model }}</p>
                <p>Rok produkcji: {{ car.Year }}</p>
                <p>Cena: {{ car.price }}</p>
                <p>Ocena prowadzenia: {{ car.Handling }}</p>
                <p>Ocena prędkości: {{ car.Speed }}</p>
                <p>Ocena komfortu: {{ car.Comfort }}</p>
                <p>Ocena wyglądu: {{ car.Looks }}</p>
                <p>Punkty: {{ car.points }}</p>
                <p>Spełnione wymagania: {{ car.requirements_met }}</p>
            </li>
        </ul>
    </div>
</template>

<script>
export default {
    props: {
        carProposals: Array,
        car: Object,
    },
};
</script>
